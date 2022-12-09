//
//  ConcreteStateB.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class ConcreteStateB: BaseState {

    override func handle1() {
        print("ConcreteStateB handles request1.\n")
    }

    override func handle2() {
        print("ConcreteStateB handles request2.")
        print("ConcreteStateB wants to change the state of the context.\n")
        context?.transitionTo(state: ConcreteStateA())
    }
}
