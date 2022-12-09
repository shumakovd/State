//
//  State.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The base State class declares methods that all Concrete State should
/// implement and also provides a backreference to the Context object,
/// associated with the State. This backreference can be used by States to
/// transition the Context to another State.
protocol State: class {

    func update(context: Context)

    func handle1()
    func handle2()
}
