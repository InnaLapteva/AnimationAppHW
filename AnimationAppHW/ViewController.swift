//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Manager on 26/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: properties
    
    let animations = Pulse.getArrayOfAnimations()
    var currentAnimation = Pulse(animationName: "pop", force: 1, delay: 1, duration: 1, velocity: 1, curve: "spring")
    
    
    //MARK: OUTLETS
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var label: UILabel!
    @IBOutlet var runButton: SpringButton!
    
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var velocityLabel: UILabel!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartedView()
    }
    
    
    //MARK: IBAction
    
    @IBAction func runAnimationButton() {
        
        let nextAnimation =  animations.randomElement()
        
        setUIElementValues()
        runButton.setTitle(nextAnimation?.animationName, for: .normal)
        runAnimation()
        
        currentAnimation = nextAnimation!
    }

}

//MARK: private methods

extension ViewController {
    
    private func getStartedView() {
        springView.layer.cornerRadius = springView.frame.height * 0.1
        runButton.layer.cornerRadius = runButton.frame.height * 0.2
        
        setUIElementValues()
        runButton.setTitle("START", for: .normal)
        
    }
    
    private func setUIElementValues() {
        label.text = currentAnimation.animationName
        
        curveLabel.text = "Curve: \(currentAnimation.curve)"
        durationLabel.text = "Duration: \(String(format: "%.2f", currentAnimation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", currentAnimation.delay))"
        forceLabel.text = "Force: \(String(format: "%.2f", currentAnimation.force))"
        velocityLabel.text = "Velocity: \(String(format: "%.2f", currentAnimation.velocity))"
        
    }
    
    private func runAnimation() {
        
        springView.animation = currentAnimation.animationName
        springView.animate()
        runButton.animation = currentAnimation.animationName
        runButton.animate()
        
    }
    
}
