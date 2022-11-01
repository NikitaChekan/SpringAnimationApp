//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by jopootrivatel on 01.11.2022.
//

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        animation: \(animation)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            animation: DataManager.shared.animations.randomElement() ?? "pop",
            curve: DataManager.shared.curves.randomElement() ?? "easeIn",
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0...1),
            delay: Float.random(in: 0...1)
        )
    }
}

