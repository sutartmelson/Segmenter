//
//  SegmentRingView.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/17/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import UIKit

class SegmentRingView : UIView {
    var sides : Int = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setNeedsDisplay()
    }
    override func draw(_ rect: CGRect)
    {
        print(frame.width, frame.height)
        let radius : CGFloat = min(frame.width/2, frame.height/2)
        let centerX : CGFloat = frame.width/2
        let centerY : CGFloat = frame.height/2
        let angle : Double = (2 * M_PI) / Double(sides)
        
        let path = UIBezierPath()
    
        if sides > 3 {
            for i in 0...sides - 1 {
                let x : CGFloat = centerX + radius * sin(CGFloat(Double(i) * angle))
                let y : CGFloat = centerY + radius * cos(CGFloat(Double(i) * angle))
                if i == 0 {
                    path.move(to: CGPoint(x: x, y: y))
                }
                else {
                    path.addLine(to: CGPoint(x: x, y: y))
                }
                print(x, y)
                
            }
            path.close()
        
            path.lineWidth = 1
            UIColor.black.setStroke()
            path.stroke()
        }
    }
}
