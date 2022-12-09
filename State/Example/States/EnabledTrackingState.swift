//
//  EnabledTrackingState.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class EnabledTrackingState: TrackingState {

    private weak var tracker: LocationTracker?

    init(tracker: LocationTracker?) {
        self.tracker = tracker
    }

    func startTracking() {
        print("EnabledTrackingState: startTracking is invoked")
        print("EnabledTrackingState: tracking location....1")
        print("EnabledTrackingState: tracking location....2")
        print("EnabledTrackingState: tracking location....3")
    }

    func stopTracking() {
        print("EnabledTrackingState: Received 'stop tracking'")
        print("EnabledTrackingState: Changing state to 'disabled'...")
        tracker?.update(state: DisabledTrackingState(tracker: tracker))
        tracker?.stopTracking()
    }

    func pauseTracking(for time: TimeInterval) {
        print("EnabledTrackingState: Received 'pause tracking' for \(time) seconds")
        print("EnabledTrackingState: Changing state to 'disabled'...")
        tracker?.update(state: DisabledTrackingState(tracker: tracker))
        tracker?.pauseTracking(for: time)
    }

    func makeCheckIn() {
        print("EnabledTrackingState: performing check-in at the current location")
    }

    func findMyChildren() {
        print("EnabledTrackingState: searching for children...")
    }
}
