//
//  ViewController.swift
//  Patterns-State
//
//  Created by Ruslan on 05.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let locationTracker = LocationTracker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationTracker.startTracking()
        locationTracker.pauseTracking(for: 5)
        locationTracker.stopTracking()
    }
}

