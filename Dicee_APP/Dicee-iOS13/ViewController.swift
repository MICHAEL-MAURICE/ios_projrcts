//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        diceeImageView1.image=[#imageLiteral(resourceName: "DiceSix"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceOne") ][Int.random(in:0...5 )]
        diceeImageView2.image=[#imageLiteral(resourceName: "DiceSix"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceOne") ][Int.random(in:0...5 )]    }
    
}

