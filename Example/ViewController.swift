//
//  ViewController.swift
//  Example
//
//  Created by Manuel J. Orán-Hernández on 4/28/17.
//  Copyright © 2017 Manuel J. Orán-Hernández. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import MJOHAnimatedGradientLabel

class ViewController: UIViewController {


    
    @IBOutlet weak var defualtAnimatedGradientLabel: MJOHAnimatedGradientLabel!

    @IBOutlet weak var customAnimatedGradinetLabel: MJOHAnimatedGradientLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        // This is the first label with color set via IB.
        //defualtAnimatedGradientLabel
        
        
        
        // A programmatic label.
        let programmaticAnimatedGradinetLabel = MJOHAnimatedGradientLabel(frame: CGRect(x: 16, y: 100, width: 250, height: 44))
        programmaticAnimatedGradinetLabel.fontSize = 20.0
        programmaticAnimatedGradinetLabel.text = "Programmatic Label"
        programmaticAnimatedGradinetLabel.gradientLayer.colors = [UIColor.cyan.cgColor, UIColor.purple.cgColor, UIColor.cyan.cgColor]
        programmaticAnimatedGradinetLabel.gradientLayer.direction = .topToBottomDiagonal
        view.addSubview(programmaticAnimatedGradinetLabel)

        
       
        // An IB label configures programatically.
        customAnimatedGradinetLabel.gradientLayer.colors = [UIColor.green.cgColor, UIColor.orange.cgColor,  UIColor.yellow.cgColor, UIColor.green.cgColor ]
        customAnimatedGradinetLabel.gradientLayer.direction = .leftToRight
        customAnimatedGradinetLabel.gradientAnimation.fromValue = [0.0, 0.0, 0.0, 0.20]
        customAnimatedGradinetLabel.gradientAnimation.toValue = [0.85, 0.90, 0.95, 1.0]
        customAnimatedGradinetLabel.gradientAnimation.duration = 3.5
        customAnimatedGradinetLabel.text = "Custom Text, Colors & Animations"
        customAnimatedGradinetLabel.fontSize = 18.0
        customAnimatedGradinetLabel.fontName = "Papyrus"
        
        
        
        
        
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

