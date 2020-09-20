//
//  AnimationModel.swift
//  HW9
//
//  Created by Михаил Милюша on 20.09.2020.
//

import Foundation

struct Animation {
    let animationPresentElement: String
    let animationCurveElement: String
    let animationForceElement: Int
    let animationScaleXElement: Int
    let animationScaleYElement: Int
}
extension Animation {
    static func getAnimationSettings() -> [Animation] {
        var counts = 0
        var animatons: [Animation] = []
        
        let animationPresentsElement = DataManager.shared.animationPresent.shuffled()
        let animationCurvesElement = DataManager.shared.animationCurve.shuffled()
        
        if animationPresentsElement.count < animationCurvesElement.count {
            counts = animationPresentsElement.count
        } else {
            counts = animationCurvesElement.count
        }
        
        for index in 1..<counts {
            let animationElement = Animation(animationPresentElement: animationPresentsElement[index], animationCurveElement: animationCurvesElement[index], animationForceElement: Int.random(in: 1...3), animationScaleXElement: Int.random(in: 0...200), animationScaleYElement: Int.random(in: 0...200))
            animatons.append(animationElement)
        }
        return animatons
    }

}


