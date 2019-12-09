//
//  ViewController.swift
//  Project4
//
//  Created by  Vladislav Bondarev on 08.12.2019.
//  Copyright © 2019 Vladislav Bondarev. All rights reserved.
//

import UIKit

class tableSiteView: UITableViewController {

    var websites = ["apple.com", "hackingwithswift.com","twitter.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "List of Site"
        print("List of Site")
        navigationController?.navigationBar.prefersLargeTitles = true
  
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableSite", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        cell.imageView?.image = UIImage(named: websites[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Site") as? ViewController {
            vc.selectWebsite = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

