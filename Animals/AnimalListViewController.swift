//
//  ViewController.swift
//  animalList
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animalList = [
        "Dog",
        "Cat",
        "Mouse",
        "Hamster",
        "Bunny",
        "Panda",
        "Lion",
        "Pig",
        "Frog",
        "Octopus",
        
        ]
    
    //determine number of sections in tableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //determine number of Rows in Section, return the number of items in the item list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    //determine the cell text at a given index path and row using a prototype cell identifier
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        cell.textLabel?.text = String(animalList[indexPath.row])
        return cell
    }
    //prepare for the segue, by pointing to the right segue identifier, then cast the segue.destination as the viewController class you'll be using for the View.  Then set the destination variable value to the list contents at the selected indexPath.row.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "AnimalDetailView" { return }
        if let dest = segue.destination as? AnimalViewController, let indexPath = tableView.indexPathForSelectedRow {
            dest.animalName = animalList[indexPath.row]
        }
    }
}
