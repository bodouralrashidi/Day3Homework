//
//  Playsound.swift
//  Day3Homework
//
//  Created by Bodour Alrashidi on 5/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import Foundation
import AVFoundation
var audioplayer : AVAudioPlayer?
func playsound(sound: String, type : String){
    
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioplayer?.play()
        }catch{
            print("doesnt work")
        }
    }
}

