//
//  ViewController.swift
//  Todoey
//
//  Created by Brian Chenault on 7/20/18.
//  Copyright © 2018 Brian Chenault. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["foo", "bar", "baz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellAtRow = tableView.cellForRow(at: indexPath)
        if (cellAtRow?.accessoryType == .checkmark) {
            cellAtRow?.accessoryType = .none
        } else {
            cellAtRow?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }


}

