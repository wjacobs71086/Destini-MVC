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
    
    var storyBoard = StoryBoard()
    
    @IBAction func submitChoice(_ sender: UIButton) {
        storyBoard.goToNext(selection: sender.currentTitle!)
        updateUi()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @objc func updateUi(){
        let position = storyBoard.currDest
        storyLabel.text = storyBoard.story[position].title
        choice1Button.setTitle(storyBoard.story[position].choice1, for: .normal)
        choice2Button.setTitle(storyBoard.story[position].choice2, for: .normal)
    }


}

