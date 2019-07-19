//
//  BoViewController.swift
//  AnimalAbuse
//
//  Created by Spence on 7/17/19.
//  Copyright © 2019 Olly. All rights reserved.
//

import UIKit

class BoViewController: UIViewController {
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBOutlet weak var bunnyImage: UIImageView!
    
    var bunnyImages : [UIImage] = [UIImage(named: "bunny1")!, UIImage(named: "bunny2")!]

    
    var boLines: [String] = ["Oh no! Where am I?!? It seems as if I've been captured...", "I'm Bo the bunny, and I get tested in the lab all the time.", "I used to live a happpy life in the forest, until I was forced here against my will to be tested on.", "And I'm not even the only one here! Other animals, including more bunnies are being tested on in this lab every day!", "Help capture the antidote that can save me and my bunny friends from the harmful chemicals!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sayLine()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //bunnyImage.animate(imageView: UIImageView(named: "bunny01")!, images: bunnyImages)
        bunnyImage.animationImages = bunnyImages
        bunnyImage.animationDuration = 0.2
        bunnyImage.startAnimating()
    }

    func sayLine() {
        textBox.text = boLines[line]
    }
    
    var line = 0
    
    @IBOutlet weak var textBox: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
        if line < 4 {
        line = line + 1
        sayLine()
        } else {
            buttonLabel.setTitle("Save Bo!",for: .normal)
        }
    }
    
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



