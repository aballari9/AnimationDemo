//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Akhila Ballari on 11/14/17.
//  Copyright © 2017 Akhila Ballari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
    
            if self.imageView.alpha == 0 {
                self.imageView.alpha = 1
                self.label.alpha = 1
                self.imageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.label.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            } else {
                self.imageView.alpha = 0
                self.label.alpha = 0
                self.imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.label.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }
            })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.alpha = 0
        label.alpha = 0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

