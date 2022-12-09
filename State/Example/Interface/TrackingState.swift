//
//  TrackingState.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

protocol TrackingState {

    func startTracking()
    func stopTracking()
    func pauseTracking(for time: TimeInterval)

    func makeCheckIn()
    func findMyChildren()
}
