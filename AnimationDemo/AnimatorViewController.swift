//
//  AnimatorViewController.swift
//  AnimationDemo
//
//  Created by Akhila Ballari on 11/14/17.
//  Copyright © 2017 Akhila Ballari. All rights reserved.
//

import UIKit

class AnimatorViewController: UIViewController {
    var animatedView: UIView!
    var animator: UIViewPropertyAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        switch (animator.state) {
        case .inactive:
            reset()
            animator.startAnimation()
            break
        case .active:
            if animator.isRunning {
                animator.pauseAnimation()
            } else {
                animator.addAnimations {
                    self.animatedView.transform = CGAffineTransform(rotationAngle: CGFloat.pi).scaledBy(x: 2, y: 2)
                }
                animator.continueAnimation(withTimingParameters: nil, durationFactor: 1)
            }
            break
        case .stopped:
            break
        default:
            break
        }
    }
    
    func reset() {
        animatedView?.removeFromSuperview()
        
        animatedView = UIView()
        animatedView.frame = CGRect(x: self.view.frame.width / 2 - (100 / 2), y: 0, width: 100, height: 100)
        animatedView.backgroundColor = UIColor.random()
        self.view.addSubview(animatedView)
        animator = UIViewPropertyAnimator(duration: 5, curve: .easeInOut, animations: {
            self.animatedView.frame = self.animatedView.frame.offsetBy(dx: 0, dy: self.view.frame.height)
            self.animatedView.backgroundColor = UIColor.random()
        })
    }

}
