//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.stories[0].storyTitle
        choice1Button.setTitle(storyBrain.stories[0].choice1Text, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2Text, for: .normal)
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        let choice1 = storyBrain.stories[0].choice1Text
        let choice2 = storyBrain.stories[0].choice2Text
        
        storyBrain.getStoryNumber()
        
        if userChoice == choice1{
            storyLabel.text = storyBrain.stories[1].storyTitle
            choice1Button.setTitle(storyBrain.stories[1].choice1Text, for: .normal)
            choice2Button.setTitle(storyBrain.stories[1].choice2Text, for: .normal)
        }
        if userChoice == choice2{
            storyLabel.text = storyBrain.stories[2].storyTitle
            choice1Button.setTitle(storyBrain.stories[2].choice1Text, for: .normal)
            choice2Button.setTitle(storyBrain.stories[2].choice2Text, for: .normal)
            
        }
        
       
    }
    
}

