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
    let force: Double
    let duration: Double
    let delay: Double
    
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
            preset: DataManager.shared.presets.randomElement() ?? "pop",
            curve: DataManager.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 0...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: Double.random(in: 0.3...0.4)
        )
    }
}

