//
//  DataManager.swift
//  AnimationAppHW
//
//  Created by Manager on 26/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationNames = ["pop", "squeeze", "shake", "morph", "wobble", "swing", "flipX", "flipY", "squeezeLeft", "squeezeRight", "squeezeUp", "squeezeDown"]
    let durations = getRandomParametres()
    let forces = getRandomParametres()
    let delays = getRandomParametres()
    let velocities = getRandomParametres()
    let curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut", "easeInOutBack", "easeInOutQuint", "easeOutQuad"]

}

extension DataManager {
    
    private static func getRandomParametres() -> [CGFloat] {
        var array: [CGFloat] = []
        
        for _ in 0..<Int.random(in: 5...15) {
            array.append(CGFloat.random(in: 0...5))
        }
        
        return array
    }
}

