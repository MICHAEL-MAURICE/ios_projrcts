//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    let eggTime=["Soft" : 3,"Medium" : 4,"Hard" : 7]
    var secondsProcess : Float = 0.0
    var totalTime: Float = 0.0
    var timer = Timer()

    @IBOutlet weak var labelTitle: UILabel!
    @IBAction func hardestPress(_ sender: UIButton) {
        secondsProcess = 0.0
        totalTime = 0.0
        labelTitle.text = sender.currentTitle
        
        let hardness=sender.currentTitle!
        timer.invalidate()
        totalTime=Float(eggTime[hardness]!)
         timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
       
        
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    @objc func update() {
        if secondsProcess < totalTime {
            
            progressBar.progress = Float(secondsProcess/totalTime)
            secondsProcess +=  0.1
            
        }
        else{ timer.invalidate()
            
            labelTitle.text="Done"
            playSound(soundName: "alarm_sound")
            
        }
           }
           
    func playSound(soundName :String) {
           let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
           player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
                   
       }
    
    
}
