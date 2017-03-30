//
//  InterfaceController.swift
//  Workout
//
//  Created by Brandon Moore on 3/30/17.
//  Copyright © 2017 Brandon Moore. All rights reserved.
//

import WatchKit
import Foundation


class WorkoutViewInterfaceController: WKInterfaceController {

    @IBOutlet var myWorkoutLabel: WKInterfaceLabel!
    @IBOutlet var myTimerLabel: WKInterfaceTimer!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var currentDateTime = Date()
        currentDateTime.addTimeInterval(60)
        myTimerLabel.setDate(currentDateTime)
        myTimerLabel.start()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
