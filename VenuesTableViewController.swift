//
//  VenuesTableViewController.swift
//  FestCapDemo
//
//  Created by Bergeron, Justin G on 12/4/17.
//  Copyright © 2017 Bergeron, Justin G. All rights reserved.
//

import UIKit

var RWF = Int()
var CEC = Int()
var ST = Int()
var RWPL = Int()
var RCG = Int()

class VenuesTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var name = String()
    
    let venues = ["Red Wing Framing", "Christ Episcopal Church", "Sheldon Theatre", "Red Wing Public Library", "Rivertown Comics & Games"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(name)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = name
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return venues.count
    }
   
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "venue")
        cell.textLabel?.text = venues[indexPath.row]
        
        return cell
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if venues[indexPath.row] == "Red Wing Framing" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let ceVC = MainStoryboard.instantiateViewController(withIdentifier: "CapacityEditor") as! CapacityEditorViewController
            ceVC.name = venues[indexPath.row]
            ceVC.venueName = "RWF"
            
            self.navigationController?.pushViewController(ceVC, animated: true)
        }else if venues[indexPath.row] == "Christ Episcopal Church" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let ceVC = MainStoryboard.instantiateViewController(withIdentifier: "CapacityEditor") as! CapacityEditorViewController
            ceVC.name = venues[indexPath.row]
            ceVC.venueName = "CEC"
            
            self.navigationController?.pushViewController(ceVC, animated: true)
        } else if venues[indexPath.row] == "Sheldon Theatre" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let ceVC = MainStoryboard.instantiateViewController(withIdentifier: "CapacityEditor") as! CapacityEditorViewController
            ceVC.name = venues[indexPath.row]
            ceVC.venueName = "ST"
            
            self.navigationController?.pushViewController(ceVC, animated: true)
        } else if venues[indexPath.row] == "Red Wing Public Library" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let ceVC = MainStoryboard.instantiateViewController(withIdentifier: "CapacityEditor") as! CapacityEditorViewController
            ceVC.name = venues[indexPath.row]
            ceVC.venueName = "RWPL"
            
            self.navigationController?.pushViewController(ceVC, animated: true)
        } else if venues[indexPath.row] == "Rivertown Comics & Games" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let ceVC = MainStoryboard.instantiateViewController(withIdentifier: "CapacityEditor") as! CapacityEditorViewController
            ceVC.name = venues[indexPath.row]
            ceVC.venueName = "RCG"
            
            self.navigationController?.pushViewController(ceVC, animated: true)
        }
    }

}
