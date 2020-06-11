//
//  Story.swift
//  Destination
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import Foundation

// CREATING STORY STRUCTURE
 struct Story
{
    let text     : String
    let choice1  : String
    let choice2  : String
    let choice1Destination   : Int
    let choice2Destination   : Int
    
    // INITIALIZATION
    init(text : String,choice1 : String,choice2 : String,choice1Destination   : Int,choice2Destination   : Int)
    {
        self.text  =  text
        self.choice1     = choice1
        self.choice2     = choice2
        self.choice1Destination    = choice1Destination
        self.choice2Destination    = choice2Destination
        
    }
}
