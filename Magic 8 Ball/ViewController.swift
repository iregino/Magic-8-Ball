//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by student14 on 2/8/19.
//  Copyright © 2019 student14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Variables
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var responseImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    // Invoke newBallImage when ask button is pressed
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    // Randomly set a new ball image to imageView
    func newBallImage() {
        randomBallNumber = Int.random(in: 0...4)
        responseImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    // Invoke newBallImage when device is shaken
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

