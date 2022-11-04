//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Nikita Chekan on 31.10.2022.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()

    @IBAction func startSpringAnimation(_ sender: UIButton) {
        descriptionLabel.text = animation.description
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)

    }
}

