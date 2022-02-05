//
//  EnabledTrackingState.swift
//  Patterns-State
//
//  Created by Ruslan on 05.02.2022.
//

import Foundation

final class EnabledTrackingState: TrackingState {
    
    private weak var tracker: LocationTracker?
    
    init(tracker: LocationTracker) {
        self.tracker = tracker
    }
    
    func startTracking() {
        print("EnabledTrackingState: Started tracking")
    }
    
    func stopTracking() {
        print("EnabledTrackingState: Changed state to 'disabled'")
        tracker?.update(state: DisabledTrackingState(tracker: tracker!))
        tracker?.stopTracking()
    }
    
    func pauseTracking(for time: TimeInterval) {
        print("EnabledTrackingState: Paused")
        tracker?.update(state: DisabledTrackingState(tracker: tracker!))
        tracker?.pauseTracking(for: time)
    }
}
 
