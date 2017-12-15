//
//  UserViewController.swift
//  FestCapDemo
//
//  Created by Bergeron, Justin G on 12/4/17.
//  Copyright © 2017 Bergeron, Justin G. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let venues = ["Red Wing Framing", "Christ Episcopal Church", "Sheldon Theatre", "Red Wing Public Library", "Rivertown Comics & Games"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return venues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = venues[indexPath.row]
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if venues[indexPath.row] == "Red Wing Framing" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let cVC = MainStoryboard.instantiateViewController(withIdentifier: "Capacity") as! CapacityViewController
            cVC.test = venues[indexPath.row]
            
            self.navigationController?.pushViewController(cVC, animated: true)
        }else if venues[indexPath.row] == "Christ Espiscopal Church" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let cVC = MainStoryboard.instantiateViewController(withIdentifier: "Capacity") as! CapacityViewController
            cVC.test = venues[indexPath.row]
            
            self.navigationController?.pushViewController(cVC, animated: true)
        }else if venues[indexPath.row] == "Sheldon Theatre" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let cVC = MainStoryboard.instantiateViewController(withIdentifier: "Capacity") as! CapacityViewController
            cVC.test = venues[indexPath.row]
            
            self.navigationController?.pushViewController(cVC, animated: true)
        }else if venues[indexPath.row] == "Red Wing Public Library" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let cVC = MainStoryboard.instantiateViewController(withIdentifier: "Capacity") as! CapacityViewController
            cVC.test = venues[indexPath.row]
            
            self.navigationController?.pushViewController(cVC, animated: true)
        }else if venues[indexPath.row] == "Rivertown Comics & Games" {
            let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let cVC = MainStoryboard.instantiateViewController(withIdentifier: "Capacity") as! CapacityViewController
            cVC.test = venues[indexPath.row]
            
            self.navigationController?.pushViewController(cVC, animated: true)
        }
        
    }

}
