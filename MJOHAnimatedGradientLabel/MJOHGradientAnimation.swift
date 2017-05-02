//
//  MJOHGradientAnimation.swift
//  MJOHAnimatedGradientLabel
//
//  Created by Manuel J. Orán-Hernández on 4/27/17.
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


/// A Subclass of CABasicAnimation.
open class MJOHGradientAnimation: CABasicAnimation {
    
    
    ///  An animation for the gradient layer. Default values for keyPath: "locations" are: fromValue = [0.0, 0.0, 0.25], toValue = [0.75, 1.0, 1.0], duration = 3.0, and repeatCount = Float.infinity.
    override public init() {
        
        super.init()
        
        keyPath = "locations"
        
        fromValue = [0.0, 0.0, 0.25]
        toValue = [0.75, 1.0, 1.0]
        duration = 3.0
        repeatCount = Float.infinity
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
