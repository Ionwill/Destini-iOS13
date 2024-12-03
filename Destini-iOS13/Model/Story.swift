//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

//create a Struct called Story that describes the structure of a story, including properties for the story title, choice1 and choice2.

struct Story{
    
    let storyTitle: String
    let choice1Text: String
    let choice2Text: String
    
    init(title: String, choice1: String, choice2: String){
        
        storyTitle = title
        choice1Text = choice1
        choice2Text = choice2
    }
}
