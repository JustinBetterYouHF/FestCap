//
//  CapacityEditorViewController.swift
//  FestCapDemo
//
//  Created by Bergeron, Justin G on 12/4/17.
//  Copyright © 2017 Bergeron, Justin G. All rights reserved.
//

import UIKit

class CapacityEditorViewController: UIViewController {

    var name = String()
    var venueName = String()
    
    @IBOutlet var capacity: UILabel!
    @IBOutlet var venue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        venue.text = name
        
        if venueName == "RWF" {
            
            capacity.text = "\(RWF)/100"
        }else if venueName == "CEC" {
            
            capacity.text = "\(CEC)/100"
        }else if venueName == "ST" {
            
            capacity.text = "\(ST)/100"
        }else if venueName == "RWPL" {
            
            capacity.text = "\(RWPL)/100"
        }else if venueName == "RCG" {
            
            capacity.text = "\(RCG)/100"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(_ sender: Any) {
        if venueName == "RWF" {
            
            RWF = RWF + 1
            capacity.text = "\(RWF)/100"
        }else if venueName == "CEC" {
            
            CEC = CEC + 1
            capacity.text = "\(CEC)/100"
        }else if venueName == "ST" {
            
            ST = ST + 1
            capacity.text = "\(ST)/100"
        }else if venueName == "RWPL" {
            
            RWPL = RWPL + 1
            capacity.text = "\(RWPL)/100"
        }else if venueName == "RCG" {
            
            RCG = RCG + 1
            capacity.text = "\(RCG)/100"
        }
    }
    
    @IBAction func subtract(_ sender: Any) {
        if venueName == "RWF" {
            
            RWF = RWF - 1
            capacity.text = "\(RWF)/100"
        }else if venueName == "CEC" {
            
            CEC = CEC - 1
            capacity.text = "\(CEC)/100"
        }else if venueName == "ST" {
            
            ST = ST - 1
            capacity.text = "\(ST)/100"
        }else if venueName == "RWPL" {
            
            RWPL = RWPL - 1
            capacity.text = "\(RWPL)/100"
        }else if venueName == "RCG" {
            
            RCG = RCG - 1
            capacity.text = "\(RCG)/100"
        }
    }
    
    

}
