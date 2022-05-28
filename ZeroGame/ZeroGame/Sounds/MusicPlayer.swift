//
//  MusicPlayer.swift
//  ZeroGame
//
//  Created by Youngseo Yoon on 2022/05/03.
//

import AVKit

class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case backgroundMusic
        case loser
    }
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error")
        }
    }
}



//class MusicPlayer {
//    static let shared = MusicPlayer()
//    var audioPlayer: AVAudioPlayer?
//
//    func startBackgroundMusic() {
//        if let bundle = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3") {
//            let backgroundMusic = NSURL(fileURLWithPath: bundle)
//            do {
//                audioPlayer = try AVAudioPlayer(contentsOf: backgroundMusic as URL)
//                guard let audioPlayer = audioPlayer else { return }
//                audioPlayer.numberOfLoops = -1
//                audioPlayer.prepareToPlay()
//                audioPlayer.play()
//            } catch {
//                print(error)
//            }
//        }
//    }
//
//    func stopBackgroundMusic() {
//        guard let audioPlayer = audioPlayer else { return }
//        audioPlayer.stop()
//
//    }
//}
