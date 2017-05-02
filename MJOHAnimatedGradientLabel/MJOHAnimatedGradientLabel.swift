//
//  MJOHAnimatedGradientLabel.swift
//  MJOHAnimatedGradient
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
import QuartzCore

/// A UIView with an animated gradient layer and a text mask.
@IBDesignable
public class MJOHAnimatedGradientLabel: UIView {
    
    
    
    // MARK: - Properties
    
    /// A gradient layer. Default values are: startPoint = CGPoint(x: 0.5, y: 0.0), endPoint = CGPoint(x: 0.5, y: 1.0), colors = [UIColor.black.cgColor,UIColor.white.cgColor,UIColor.black.cgColor], and locations = [0.25,0.5,0.75].
    public let gradientLayer = MJOHGradientLayer()
    
    
    
    ///  An animation for the gradient layer. Default values for keyPath: "locations" are: fromValue = [0.0, 0.0, 0.25], toValue = [0.75, 1.0, 1.0], duration = 3.0, and repeatCount = Float.infinity.
    public let gradientAnimation = MJOHGradientAnimation()
    
    
    
    
    ///  A text mask layer.
    public let maskLayer = MJOHTextMaskLayer()
    
    
    
    // The text to be displayed. Default is Label.
    @IBInspectable public var text: String = "Label" {
        
        
        didSet {
            
            updateTextMask()
            
        }
    }
    
    
    /// The font name of the font to be used for the text. Defualt is: HelveticaNeue-Thin
    @IBInspectable public var fontName: String = "Menlo"{
        
        didSet{
            
            updateTextMask()
            
        }
        
        
    }
    
    
    // The font size of the font to be used for the text. Default is 28.0
    @IBInspectable public var fontSize: CGFloat = 30.0{
        
        didSet{
            
            updateTextMask()
            
        }
        
        
    }
    
    // The alingment to be used for the text. This is an NSTextAlingment value. 0 left, 1 right, 2 center, 3 justified, 4 natural. The default value is natural.
    @IBInspectable public var textAlignment: Int = 4{
        
        didSet{
            
            updateTextMask()
            
        }
        
        
    }
    
    
    
    
    
    /// The first color of the gradinet gradinet layer. Defualt is: UIColor.white
    @IBInspectable public var firstColor: UIColor = UIColor.black {
        
        didSet{
            
            updateGradientLayerColors()
            
        }
        
    }
    
    /// The second color of the gradinet gradinet layer. Defualt is: UIColor.black
    @IBInspectable public var secondColor: UIColor = UIColor.white {
        
        didSet{
            
            updateGradientLayerColors()
            
        }
        
    }
    
    
    /// The third color of the  gradinet layer. Defualt is: UIColor.white
    @IBInspectable public var thirdColor: UIColor = UIColor.black {
        
        didSet{
            
            updateGradientLayerColors()
            
        }
        
    }
    
    
    /// Turn on/off the gradinet animation.
    @IBInspectable var animated: Bool = true {
        
        
        
        didSet{
            
            updateAnimationState()
        }
        
        
    }
    
    
    
    /// Returns the NSTextAlignment value corresponding to the textAlingment IB variable.
    private var textAlignmentValue: NSTextAlignment{
        
        get{
            
            switch (textAlignment){
                
            case 0: return .left
            case 1: return .right
            case 2: return .center
            case 3: return .justified
            case 4: return .natural
            default: return .natural
                
                
                
            }
            
            
        }
        
    }
    
    
    
    // MARK: - Functions
    
    
    /**
     Updates the gradinet layer animation.
     
     */
    private func updateAnimationState(){
        
        setNeedsDisplay()
        
        if animated {
            
            gradientLayer.add(gradientAnimation, forKey: nil)
            
        }
        else{
            
            
            gradientLayer.removeAllAnimations()
            
        }
        
        
    }
    
    
    
    
    
    /**
     Updates the gradinet layer colors.
     
     */
    private func updateGradientLayerColors(){
        
        setNeedsDisplay()
        
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        
        
    }
    
    
    
    /**
     Updates the text mask.
     
     */
    private func updateTextMask(){
        
        setNeedsDisplay()
        configureTextMask()
        
    }
    
    
    
    
    /**
     Configures the text mask for the gradient layer.
     
     */
    private func configureTextMask() {
        
        
        gradientLayer.mask = maskLayer.configureTextMask(bounds: bounds, text: text, fontName: fontName, fontSize: fontSize, textAlignment: textAlignmentValue)
        
        
    }
    
    
    
    
    
    // MARK: - UIView
    
    override public func layoutSubviews() {
        
        backgroundColor = UIColor.clear
        
        
        configureTextMask()
        
        
        layer.borderColor = UIColor.green.cgColor
        
        gradientLayer.frame = CGRect(
            x: -bounds.size.width,
            y: bounds.origin.y,
            width: 3 * bounds.size.width,
            height:  bounds.size.height)
        
        
        
        layer.addSublayer(gradientLayer)
        
    }
    
    
    
    override public func didMoveToWindow() {
        super.didMoveToWindow()
        
        
        
        if animated {
            gradientLayer.add(gradientAnimation, forKey: nil)
        }
        
    }
    
    
    
}
