//
//  AnimationModel.swift
//  AnimationAppHW
//
//  Created by Manager on 26/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import Foundation
import Spring

struct Pulse {
    
    let animationName: String
    let force: CGFloat
    let delay: CGFloat
    let duration: CGFloat
    let velocity: CGFloat
    let curve: String
    
    
    
    static func getArrayOfAnimations() -> [Pulse] {
        
        var animations: [Pulse] = []
        
        let animationNames = DataManager.shared.animationNames
        let forces = DataManager.shared.forces
        let delays = DataManager.shared.delays
        let durations = DataManager.shared.durations
        let velocities = DataManager.shared.velocities
        let curves = DataManager.shared.curves
        
        for _ in 0..<animationNames.count {
            let animation = Pulse(animationName: animationNames.randomElement() ?? "pop",
                                  force: forces.randomElement() ?? 1,
                                  delay: delays.randomElement() ?? 1,
                                  duration: durations.randomElement() ?? 1,
                                  velocity: velocities.randomElement() ?? 1,
                                  curve: curves.randomElement() ?? "spring")
            
            animations.append(animation)
        }
        return animations
    }
    
}

