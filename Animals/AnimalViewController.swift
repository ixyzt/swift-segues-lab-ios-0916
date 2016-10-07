//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var animalName: String?
    var animalEmoji: String?
    
    
    //Set the smaller text label to the English name of the animal represented in this view.
    //Set the larger text label to the emoji corresponding to the animal. (You may want to create a helper method to map the English name of the animal to its emoji.)
    //Set the nav bar title to the English name of the animal.
    override func viewWillAppear(_ animated: Bool) {
        nameToEmoji()
        emojiLabel.text = animalEmoji
        nameLabel.text = animalName
    }
    
    func nameToEmoji(){
        if let animal = animalName {
            switch animal {
            case "Dog":
                animalEmoji = "🐶"
            case "Cat":
                animalEmoji = "🐱"
            case "Mouse":
                animalEmoji = "🐭"
            case "Hamster":
                animalEmoji = "🐹"
            case "Bunny":
                animalEmoji = "🐰"
            case "Panda":
                animalEmoji = "🐼"
            case "Lion":
                animalEmoji = "🦁"
            case "Pig":
                animalEmoji = "🐷"
            case "Frog":
                animalEmoji = "🐸"
            case "Octopus":
                animalEmoji = "🐙"
            default:
                animalEmoji = "❓"
            }
        }
    }
}




    
    

    
    
    
    

