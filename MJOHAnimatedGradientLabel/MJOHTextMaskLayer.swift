//
//  MJOHTextMaskLayer.swift
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



/// A Subclass of MOHJMaskLayer specialized to handle text.
open class MJOHTextMaskLayer: MJOHMaskLayer {
    
    
    
    
    /*
     Configures the text based CALayer to be used as a mask.
     
     - Parameters:
        - bounds: The bounds of the text mask
        - text: The text
        - fontSize: The text font size
        - textAlignment: The text alignment
     
     
     - Returns: A CALayer configured with the specified text properties
     
     
     */
    public func configureTextMask(bounds: CGRect, text: String, fontName: String, fontSize: CGFloat, textAlignment: NSTextAlignment) -> CALayer {
        
        let style = NSMutableParagraphStyle()
        style.alignment = textAlignment
        
        
        
        let textAttributes = [NSFontAttributeName: UIFont(
            name: fontName,
            size: fontSize)!,
                              NSParagraphStyleAttributeName: style]
        
  
        
        
        let image = UIGraphicsImageRenderer(size: bounds.size).image{
            _ in
            text.draw(in: bounds, withAttributes: textAttributes)
        }
        
        
        
        
        return super.configure(frame: bounds.offsetBy(dx: bounds.size.width, dy: 0), contents: image.cgImage)
        
        
    }
    
    
    
}
