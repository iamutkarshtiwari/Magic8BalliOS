//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    let ballImageLiterals = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        refreshImage()
    }
    
    @IBAction func onAskButtonClicked(_ sender: UIButton) {
        refreshImage()
    }
    
    private func refreshImage() {
        if let imageLiteralResourceName = ballImageLiterals.randomElement() {
            ballImageView.image = UIImage(imageLiteralResourceName: imageLiteralResourceName)
        } else {
            print("unable to load image")
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        refreshImage()
    }
}

