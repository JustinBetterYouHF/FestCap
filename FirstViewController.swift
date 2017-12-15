//
//  FirstViewController.swift
//  FestCapDemo
//
//  Created by Bergeron, Justin G on 12/4/17.
//  Copyright © 2017 Bergeron, Justin G. All rights reserved.
//

// **********************************************************
// Generic landing page that lists all festivals
// (Most likely not needed just being used to layout tableview)
// **********************************************************

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["Big Turn Music Fest", "Midwest Music Fest"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if list[indexPath.row] == "Big Turn Music Fest" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vVC = MainStoryboard.instantiateViewController(withIdentifier: "VenueTableViewController") as! VenuesTableViewController
            vVC.name = list[indexPath.row]
            
            self.navigationController?.pushViewController(vVC, animated: true)
        }else {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vVC = MainStoryboard.instantiateViewController(withIdentifier: "VenueTableViewController") as! VenuesTableViewController
            vVC.name = list[indexPath.row]
            
            self.navigationController?.pushViewController(vVC, animated: true)
        }
        
    }

}

