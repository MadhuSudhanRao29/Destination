//
//  StoryBrain.swift
//  Destination
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import Foundation

struct StoryBrain
{
    
    var storyNo = 0
    
    // CREATING STORY ARRAY
    let story  = [
        Story(text: "You Are Going To Movie.Which Vehicle U Will Choose ? ", choice1: "Car", choice2: "Bike", choice1Destination: 1, choice2Destination: 2),
        Story(text: "Now U R Riding Ur Car,Will u Call ur Friends Or Single ? ", choice1: "Single", choice2: "Friends", choice1Destination: 3, choice2Destination: 4),
        Story(text: "Now U R Riding Ur Bike,Will U Ride Fast ? ", choice1: "Ride At 75Km Hr", choice2: "Ride At 45-55Km Hr", choice1Destination: 5, choice2Destination: 6),
        Story(text: "U Looks You Enjoy Ur Own Company.Lets Enjoy The Movie", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
        Story(text: "U Looks You Enjoy Ur Company With Friends.Lets Enjoy The Movie", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
        Story(text: "U Looks You Are Driving Fast.Try To Reduce Ur Speed.Lets Enjoy The Movie", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
        Story(text: "U Are Good At Driving.Lets Enjoy The Movie", choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0),
    ]
    
    
    // GETTING STORY TEXT
    func getStoryText()->String
    {
        return story[storyNo].text
    }
    
    // GETTING CHOICE 1
    func getChoice1()->String
    {
        return story[storyNo].choice1
    }
    
    // GETTING CHOICE 2
    func getChoice2()->String
    {
        return story[storyNo].choice2
    }
    
    
    // GETTING NEXT STORY
    mutating func getNextStory(received : String)
    {
        if ( received  == story[storyNo].choice1)
        {
            storyNo = story[storyNo].choice1Destination
        }
        else
        {
            storyNo = story[storyNo].choice2Destination
        }
    }
}



