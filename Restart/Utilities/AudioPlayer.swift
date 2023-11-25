//
//  AudioPlayer.swift
//  Restart
//
//  Created by Sergio Absalon Sanchez Flores on 20/10/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play this sound file")
        }
    }
}
