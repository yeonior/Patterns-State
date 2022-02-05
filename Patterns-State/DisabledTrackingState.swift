//
//  DisabledTrackingState.swift
//  Patterns-State
//
//  Created by Ruslan on 05.02.2022.
//

import Foundation

final class DisabledTrackingState: TrackingState {
    
    private weak var tracker: LocationTracker?
    
    init(tracker: LocationTracker) {
        self.tracker = tracker
    }
    
    func startTracking() {
        print("DisabledTrackingState: Changed state to 'enabled'")
        tracker?.update(state: EnabledTrackingState(tracker: tracker!))
    }
    
    func stopTracking() {
        print("DisabledTrackingState: Already stopped")
    }
    
    func pauseTracking(for time: TimeInterval) {
        print("DisabledTrackingState: Paused for \(time) seconds")
        
        for i in 0...Int(time) {
            print("DisabledTrackingState: \(i) second(s) remaining")
        }
        print("DisabledTrackingState: Changed state to 'enabled'")
        tracker?.update(state: EnabledTrackingState(tracker: tracker!))
        tracker?.startTracking()
    }
}
