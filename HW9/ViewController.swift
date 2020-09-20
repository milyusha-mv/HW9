//
//  ViewController.swift
//  HW9
//
//  Created by Михаил Милюша on 18.09.2020.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationViewLable: UILabel!
    @IBOutlet var startAnimationButton: UIButton!
    @IBOutlet var animationView: SpringView!
    
//    private var animationPresentElement = "slideLeft"
//    private var animationCurveElement = "easeIn"
//    private var animationForceElement: CGFloat = 1
//    private var animationScaleXElement: CGFloat = 0
//    private var animationScaleYElement: CGFloat = 0
//
    let animations = Animation.getAnimationSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        
        animationViewLable.numberOfLines = 0
        animationViewLable.textAlignment = .left
        animationViewLable.text = ""
    }

    @IBAction func startAnimationAction() {
        
        setAnimationSettings()
        animationView.animate()
        configNextAnimationSettings()
    }
    
    func setAnimationSettings() {
        animationView.animation = animations.first?.animationPresentElement
        animationView.curve = animationCurveElement
        animationView.force = animationForceElement
        animationView.scaleX = animationScaleXElement
        animationView.scaleY = animationScaleYElement

        animationViewLable.text = """
        animation: \(animationPresentElement)
        curve:  \(animationCurveElement)\n
        force: \(animationForceElement)
        scaleX: \(animationScaleXElement)
        scaleY: \(animationScaleYElement)
        """
    }
    
    func configNextAnimationSettings() {
//        animationPresentElement = animationPresent.randomElement() ?? "slideLeft"
//        animationCurveElement = animationCurve.randomElement() ?? "easeIn"
//        animationForceElement = CGFloat(Int.random(in: 1...3))
//        animationScaleXElement = CGFloat(Int.random(in: 0...200))
//        animationScaleYElement = CGFloat(Int.random(in: 0...200))
//
//        startAnimationButton.setTitle("Next \"\(animationPresentElement)\"", for: .normal)
    }
}

