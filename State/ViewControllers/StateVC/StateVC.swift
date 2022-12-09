//
//  StateVC.swift
//  State
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit

class StateVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testStateConcept()
        testStateForExample()
    }
    
    // MARK: - Methods
    
    func testStateConcept() {
        let context = Context(ConcreteStateA())
        context.request1()
        context.request2()
    }
    
    func testStateForExample() {
        print("Client: I'm starting working with a location tracker")
        let tracker = LocationTracker()
        
        print()
        tracker.startTracking()
        
        print()
        tracker.pauseTracking(for: 2)
        
        print()
        tracker.makeCheckIn()
        
        print()
        tracker.findMyChildren()
        
        print()
        tracker.stopTracking()
    }
    
}
