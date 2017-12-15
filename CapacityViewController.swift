//
//  CapacityViewController.swift
//  FestCapDemo
//
//  Created by Bergeron, Justin G on 12/4/17.
//  Copyright © 2017 Bergeron, Justin G. All rights reserved.
//

// **********************************************************
// This is where the users will see the current capacity
// **********************************************************

import UIKit

class CapacityViewController: UIViewController {

    var test = String()
    
    @IBOutlet var capacity: UILabel!
    @IBOutlet var venueName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = test
        venueName.text = test
        if test == "Red Wing Framing" {
            
            capacity.text = "\(RWF)/100"
        }else if test == "Christ Episcopal Church" {
            
            capacity.text = "\(CEC)/100"
        }else if test == "Sheldon Theatre" {
            
            capacity.text = "\(ST)/100"
        }else if test == "Red Wing Public Librar" {
            
            capacity.text = "\(RWPL)/100"
        }else if test  == "Rivertown Comics & Games" {
            
            capacity.text = "\(RCG)/100"
        }
    }

}
