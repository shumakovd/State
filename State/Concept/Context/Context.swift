//
//  Context.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The Context defines the interface of interest to clients. It also maintains
/// a reference to an instance of a State subclass, which represents the current
/// state of the Context.
class Context {

    /// A reference to the current state of the Context.
    private var state: State

    init(_ state: State) {
        self.state = state
        transitionTo(state: state)
    }

    /// The Context allows changing the State object at runtime.
    func transitionTo(state: State) {
        print("Context: Transition to " + String(describing: state))
        self.state = state
        self.state.update(context: self)
    }

    /// The Context delegates part of its behavior to the current State object.
    func request1() {
        state.handle1()
    }

    func request2() {
        state.handle2()
    }
}
