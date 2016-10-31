//
//  BuilderView.swift
//  Segmenter
//
//  Created by Stuart Nelson on 10/31/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import UIKit

class BuilderView : UIView{
    
    // maxDiamter : The maximum diameter a ring segment can be
    private var maxDiameter     : Float
    // segmentHeight : The fixed height of each segment row
    private var segmentHeight   : Float
    // rowCount : The number of rows building the work piece
    private var rowCount        : Int
    // segmentCount : The number of segments per row
    private var segmentCount    : Int
    
    init(frame: CGRect, maxDiameter: Float, segmentHeight : Float, rowCount : Int, segmentCount : Int) {
        self.maxDiameter    = maxDiameter
        self.segmentHeight  = segmentHeight
        self.rowCount       = rowCount
        self.segmentCount   = segmentCount

        super.init(frame: frame)
                
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        // Draw max diemeter line at x = 1/7 of screen width
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: frame.width/7, y: frame.height))
        path.addLine(to: CGPoint(x: frame.width/7, y: 0))
        path.close()
        
        path.lineWidth = 1
        UIColor.gray.setStroke()
        path.stroke()
        
        
    }
}
