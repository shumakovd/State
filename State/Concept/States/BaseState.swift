//
//  BaseState.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class BaseState: State {

    private(set) weak var context: Context?

    func update(context: Context) {
        self.context = context
    }

    func handle1() {}
    func handle2() {}
}
