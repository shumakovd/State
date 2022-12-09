//
//  DisabledTrackingState.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class DisabledTrackingState: TrackingState {

    private weak var tracker: LocationTracker?

    init(tracker: LocationTracker?) {
        self.tracker = tracker
    }

    func startTracking() {
        print("DisabledTrackingState: Received 'start tracking'")
        print("DisabledTrackingState: Changing state to 'enabled'...")
        tracker?.update(state: EnabledTrackingState(tracker: tracker))
    }

    func pauseTracking(for time: TimeInterval) {
        print("DisabledTrackingState: Pause tracking for \(time) seconds")

        for i in 0...Int(time) {
            print("DisabledTrackingState: pause...\(i)")
        }

        print("DisabledTrackingState: Time is over")
        print("DisabledTrackingState: Returing to 'enabled state'...\n")
        self.tracker?.update(state: EnabledTrackingState(tracker: self.tracker))
        self.tracker?.startTracking()
    }

    func stopTracking() {
        print("DisabledTrackingState: Received 'stop tracking'")
        print("DisabledTrackingState: Do nothing...")
    }

    func makeCheckIn() {
        print("DisabledTrackingState: Received 'make check-in'")
        print("DisabledTrackingState: Changing state to 'enabled'...")
        tracker?.update(state: EnabledTrackingState(tracker: tracker))
        tracker?.makeCheckIn()
    }

    func findMyChildren() {
        print("DisabledTrackingState: Received 'find my children'")
        print("DisabledTrackingState: Changing state to 'enabled'...")
        tracker?.update(state: EnabledTrackingState(tracker: tracker))
        tracker?.findMyChildren()
    }
}
