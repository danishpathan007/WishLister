//
//  WishListerVC.swift
//  WishLister
//
//  Created by Danish Khan on 11/07/18.
//  Copyright © 2018 Danish Khan. All rights reserved.
//

import UIKit

class WishListerVC : UITableViewController {

        let itemArray = ["Find mike "," Buy eggos"," Destroy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishListerItemCell",for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell 
    }
    
    // Table view Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

