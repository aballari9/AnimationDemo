//
//  ColorViewController.swift
//  AnimationDemo
//
//  Created by Akhila Ballari on 11/14/17.
//  Copyright © 2017 Akhila Ballari. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var centerVerticalConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5, animations: {
            self.view.backgroundColor = UIColor.random()
            self.animatedView.backgroundColor = UIColor.random()
            let constant = self.centerVerticalConstraint.constant
            if constant == -100 {
                self.centerVerticalConstraint.constant = 100
            } else {
                self.centerVerticalConstraint.constant = -100
            }
            self.view.layoutIfNeeded()
        })
    }
    
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: CGFloat.random(), green: CGFloat.random(), blue: CGFloat.random(), alpha: 1)
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
}
