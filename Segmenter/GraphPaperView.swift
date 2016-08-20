//
//  GraphPaperView.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/18/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import UIKit

class GraphPaperView: UIView {
    
    var gridSize : (x : Int, y : Int) = (0,0) {
        didSet {
            createCells()
            self.setNeedsDisplay()
        }
    }
    
    var cells : [cell] = []
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        let sideLength : CGFloat = min(frame.width, frame.height)
        
        // Draw vertical lines
        for i in 1...gridSize.x {
            let x : CGFloat = CGFloat(Float(i) * (Float(sideLength)/Float(gridSize.x)))
            path.move(to: CGPoint(x: x, y: CGFloat(frame.minY)))
            path.addLine(to: CGPoint(x: x, y: CGFloat(sideLength)))
        }
        
        // Draw horizontal lines
        for i in 1...gridSize.y {
            let y : CGFloat = CGFloat(Float(i) * (Float(sideLength)/Float(gridSize.y)))
            path.move(to: CGPoint(x: CGFloat(frame.minX), y: y))
            path.addLine(to: CGPoint(x: CGFloat(sideLength), y: y))
        }
        
        path.lineWidth = 1
        UIColor.black.setStroke()
        path.stroke()
    }
    
    func createCells() {
        
        let sideLength : CGFloat = min(frame.width, frame.height)
        
    }
    
    func getCell(_ point : CGPoint) -> cell?
    {
        for cell in cells {
            if cell.withinCell(point) {
                return cell
            }
        }
        return nil
    }
    
    class cell {
        var midX : CGFloat
        var midY : CGFloat
        var maxX : CGFloat
        var maxY : CGFloat
        
        init(midX : CGFloat, midY : CGFloat, maxX : CGFloat, maxY : CGFloat) {
            self.midX = midX
            self.midY = midY
            self.maxX = maxX
            self.maxY = maxY
        }
        
        func withinCell(_ point : CGPoint) -> Bool {
            if (point.x > midX && point.x < midY) && (point.y > midY && point.y < midY) {
                return true
            }
            else {
                return false
            }
        }
    }
}
