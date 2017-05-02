//
//  MJOHGradientLayer.swift
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


/// A Subclass of CAGradinetLayer.
open class MJOHGradientLayer: CAGradientLayer {
    
    
    
    
    /// A gradient layer. Default values are: startPoint = CGPoint(x: 0.5, y: 0.0), endPoint = CGPoint(x: 0.5, y: 1.0), colors = [UIColor.red.cgColor,UIColor.white.cgColor,UIColor.red.cgColor], and locations = [0.25,0.5,0.75].
    override public init() {
        super.init()
        
        
        colors = [UIColor.black.cgColor, UIColor.white.cgColor, UIColor.black.cgColor]
        
        
        locations = [0.25, 0.5, 0.75]
        
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override public init(layer: Any) {
        super.init(layer: layer)
    }
    
    
    
    
    /*
     Gradient directions.
     
     -topToBottom: Top to bottom gradient.
     -letftToRight: Left to right gradinet.
     -topToBottomDiagonal: Top to Bottom diagonal gradient.
     
     */
    public enum GradientDirection {
        
        case topToBottom
        case leftToRight
        case topToBottomDiagonal
        
        
        
    }
    
    
    
    // The gradinet direction
    public var direction: GradientDirection =  .topToBottom  {
        
        
        
        didSet{
            
            switch direction {
                
                
            case .topToBottom:
                startPoint = CGPoint(x: 0.5, y: 0.0)
                endPoint = CGPoint(x: 0.5, y: 1.0)
                
            case .leftToRight:
                startPoint = CGPoint(x: 0.0, y: 0.5)
                endPoint = CGPoint(x: 1.0, y: 0.5)
                
            case .topToBottomDiagonal:
                startPoint = CGPoint(x: 0.0, y: 0.0)
                endPoint = CGPoint(x: 1, y: 0.5)
                
                
                
            }
            
            
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
