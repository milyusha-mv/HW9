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

    let animations = Animation.getAnimationSettings()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        
        animationViewLable.numberOfLines = 0
        animationViewLable.textAlignment = .left
        animationViewLable.text = ""
    }

    @IBAction func startAnimationAction() {
        
        setAnimationSettings(count)
        animationView.animate()
        count += 1
    }
    
    func setAnimationSettings(_ index: Int) {
        animationView.animation = animations[index].animationPresentElement
        animationView.curve = animations[index].animationCurveElement
        animationView.force = CGFloat(animations[index].animationForceElement)
        animationView.scaleX = CGFloat(animations[index].animationScaleXElement)
        animationView.scaleY = CGFloat(animations[index].animationScaleYElement)

        animationViewLable.text = """
        animation: \(animations[index].animationPresentElement)
        curve:  \(animations[index].animationCurveElement)\n
        force: \(animations[index].animationForceElement)
        scaleX: \(animations[index].animationScaleXElement)
        scaleY: \(animations[index].animationScaleYElement)
        """
        startAnimationButton.setTitle("Next \"\(animations[index + 1].animationPresentElement)\"", for: .normal)
    }
}

