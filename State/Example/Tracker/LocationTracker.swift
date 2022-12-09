//
//  LocationTracker.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class LocationTracker {

    /// Location tracking is enabled by default
    private lazy var trackingState: TrackingState = EnabledTrackingState(tracker: self)

    func startTracking() {
        trackingState.startTracking()
    }

    func stopTracking() {
        trackingState.stopTracking()
    }

    func pauseTracking(for time: TimeInterval) {
        trackingState.pauseTracking(for: time)
    }

    func makeCheckIn() {
        trackingState.makeCheckIn()
    }

    func findMyChildren() {
        trackingState.findMyChildren()
    }

    func update(state: TrackingState) {
        trackingState = state
    }
}
