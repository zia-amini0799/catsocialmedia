//
//  PlaySound.swift
//  Project1
//
//  Created by Zia on 07/07/20.
//  Copyright © 2020 Zia. All rights reserved.
//

import SwiftUI
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound:String, type:String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Could not find The file")
        }
    }
}
