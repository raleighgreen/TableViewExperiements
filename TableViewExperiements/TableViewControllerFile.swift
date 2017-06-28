//
//  TableViewControllerFile.swift
//  TableViewExperiements
//
//  Created by Raleigh Green on 6/28/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import Foundation
import UIKit

var names = [String]()
var identities = [String]()

class TableViewController:  UITableViewController {
    
    override func viewDidLoad() {
        names = ["Maj7","Dom7","Min7","Min(maj)7","Dom7sus4"]
        identities = ["A","B","C","D","E"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel!.text = names[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identities[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
}
