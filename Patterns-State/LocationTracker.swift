//
//  LocationTracker.swift
//  Patterns-State
//
//  Created by Ruslan on 05.02.2022.
//

import Foundation

protocol TrackingState {
    func startTracking()
    func stopTracking()
    func pauseTracking(for time: TimeInterval)
}

final class LocationTracker {
    
    private lazy var trackingState: TrackingState? = nil
    
    func startTracking() {
        trackingState?.startTracking()
    }
    
    func stopTracking() {
        trackingState?.stopTracking()
    }
    
    func pauseTracking(for time: TimeInterval) {
        trackingState?.pauseTracking(for: time)
    }
    
    func update(state: TrackingState) {
        trackingState = state
    }
}
