//
//  ViewController.swift
//  Destination
//
//  Created by Madhu on 19/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    // CREATING A VARIABLE TO STORY BRAIN STRUCT
    var storyBrain   = StoryBrain()
    
    
    // CREATING OUTLETS FOR EACH AND EVERY ONE
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    // CREATING SINGLE OUTLET FOR ALL BUTTONS
    @IBAction func buttonPresed(_ sender: UIButton)
    {
        let userPressed = sender.currentTitle!
        
        storyBrain.getNextStory(received: userPressed)
        updateUI()
    }
    
    
    // CALLING FUNCTION
    func updateUI()
    {
        // GETTING STORY TEXT
        storyLabel.text = storyBrain.getStoryText()
        
        // ASSIGNING TITLE TO BUTTONS
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        
          // ASSIGNING TITLE TO BUTTONS
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
}

