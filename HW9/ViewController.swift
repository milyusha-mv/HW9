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
    
    private let animationPresent = ["slideLeft",
                             "slideRight",
                             "slideDown",
                             "slideUp",
                             "squeezeLeft",
                             "squeezeRight",
                             "squeezeDown",
                             "squeezeUp",
                             "fadeIn",
                             "fadeOut",
                             "fadeOutIn",
                             "fadeInLeft",
                             "fadeInRight",
                             "fadeInDown",
                             "fadeInUp",
                             "zoomIn",
                             "zoomOut",
                             "fall",
                             "shake",
                             "pop",
                             "flipX",
                             "flipY",
                             "morph",
                             "squeeze",
                             "flash",
                             "wobble",
                             "swing"]
    
    private let animationCurve = ["easeIn",
                                  "easeOut",
                                  "easeInOut",
                                  "linear",
                                  "spring",
                                  "easeInSine",
                                  "easeOutSine",
                                  "easeInOutSine",
                                  "easeInQuad",
                                  "easeOutQuad",
                                  "easeInOutQuad",
                                  "easeInCubic",
                                  "easeOutCubic",
                                  "easeInOutCubic",
                                  "easeInQuart",
                                  "easeOutQuart",
                                  "easeInOutQuart",
                                  "easeInQuint",
                                  "easeOutQuint",
                                  "easeInOutQuint",
                                  "easeInExpo",
                                  "easeOutExpo",
                                  "easeInOutExpo",
                                  "easeInCirc",
                                  "easeOutCirc",
                                  "easeInOutCirc",
                                  "easeInBack",
                                  "easeOutBack",
                                  "easeInOutBack"]
    
    private var animationPresentElement = "slideLeft"
    private var animationCurveElement = "easeIn"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        
        animationViewLable.numberOfLines = 0
        animationViewLable.textAlignment = .left
        animationViewLable.text = ""
        
        
    }

    @IBAction func startAnimationAction() {
        animationView.animation = animationPresentElement
        animationView.curve = animationCurveElement
        
        animationViewLable.text = """
        animation: \(animationPresentElement)\n
        curve:  \(animationCurveElement)
        """
        
        animationView.animate()
        
        animationPresentElement = animationPresent.randomElement() ?? "slideLeft"
        animationCurveElement = animationCurve.randomElement() ?? "easeIn"
        
        startAnimationButton.setTitle("Next \"\(animationPresentElement)\"", for: .normal)
    }
}

