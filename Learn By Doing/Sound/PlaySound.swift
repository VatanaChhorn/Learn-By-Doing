//
//  PlaySound.swift
//  Learn By Doing
//
//  Created by Vatana Chhorn on 17/01/2021.
//

import AVFoundation
import Foundation

// MARK: - AUDIO PLAYER

var audioPlayer : AVAudioPlayer?

func playSound (name: String, type: String) {
    if let path = Bundle.main.path(forResource: name, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cannot play sound!")
        }
    }
}
