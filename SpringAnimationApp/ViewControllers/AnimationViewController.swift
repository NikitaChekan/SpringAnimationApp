//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Nikita Chekan on 31.10.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    private var nextAnimation = ""
    private var runAnimation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }


    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = nextAnimation
        
        let randomAnimation = Animation.getRandomAnimation()
        
        if runAnimation {
            setAnimation(from: randomAnimation)
            descriptionLabel.text = randomAnimation.description
            nextAnimation = randomAnimation.preset
        } else {
            springAnimationView.animation = animation.preset
            setAnimation(from: animation)
            nextAnimation = randomAnimation.preset
        
            runAnimation = true
        }
        
        sender.setTitle("Run \(nextAnimation)", for: .normal)

    }
    
    // MARK: Private Methonds
    private func setAnimation(from _: Animation) {
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        
        springAnimationView.animate()
    }
}

