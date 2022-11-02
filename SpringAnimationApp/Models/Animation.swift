//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Nikita Chekan on 01.11.2022.
//
import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement() ?? "",
            curve: DataManager.shared.curves.randomElement() ?? "",
            force: Float.random(in: 0...2),
            duration: Float.random(in: 1...1.3),
            delay: Float.random(in: 0...1)
        )
    }
}

