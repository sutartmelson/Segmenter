//
//  ViewController.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/17/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentCountLabel: UILabel!
    @IBOutlet weak var segmentCountSlider: UISlider!
    @IBOutlet weak var cutAngleLabel: UILabel!
    @IBOutlet weak var outsideLengthLabel: UILabel!
    @IBOutlet weak var outsideLengthSlider: UISlider!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var segmentRingView: SegmentRingView!
    
    var outsideCutLength : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let val : Float = nextMult(outsideLengthSlider.value, Measurement.thirtysecond.rawValue)
        outsideCutLength = val
        
        setSegmentLabel(getCurrentSegmentCount())
        setCutAngleLabel()
        setOutsideLengthLabel()
        setDiameterLabel()
        let trunc : Int = Int(segmentCountSlider.value)
        segmentRingView.sides = trunc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sementCountSliderAction(_ sender: UISlider) {
        // Truncate number to int
        let trunc : Int = Int(sender.value)
        setSegmentLabel(trunc)
        setCutAngleLabel()
        setOutsideLengthLabel()
        setDiameterLabel()
        
        segmentRingView.sides = trunc
    }
    
    @IBAction func outsideLengthSliderAction(_ sender: UISlider) {
        let val : Float = nextMult(sender.value, Measurement.thirtysecond.rawValue)
        outsideCutLength = val
        setOutsideLengthLabel()
        setDiameterLabel()
    }
    
    func setSegmentLabel(_ count : Int) {
        let segString : String = "Segments: \(count)"
        segmentCountLabel.text = segString
    }
    func getCurrentSegmentCount() -> Int {
        return Int(segmentCountSlider.value)
    }
    func setCutAngleLabel() {
        let angle : Float = Float(180/Float(Int(segmentCountSlider.value)))
        let cutString : String = "Cut Angle: \(angle)"
        cutAngleLabel.text = cutString
    }
    func setOutsideLengthLabel() {
        let lengthString : String = "Outside Segment Length: \(imperialString(outsideCutLength))"
        outsideLengthLabel.text = lengthString
    }
    func setDiameterLabel() {
        var diameter : Float = (Float(Int(segmentCountSlider.value)) * outsideCutLength) / Float(M_PI)
        diameter = nextMult(diameter, Measurement.thirtysecond.rawValue)
        let diameterString : String = "Diameter: \(imperialString(diameter))"
        diameterLabel.text = diameterString
    }
    
    func nextMult(_ num : Float, _ res : Float) -> Float {
        return ceilf(num/res) * res
    }
    func imperialString(_ num : Float) -> String{
        let split = modf(num)
        let inch = Int(split.0)
        var frac : String = ImperialMeasurements.strings[split.1]!
        if(frac == "0")
        {
            frac = ""
        }
        return String(inch) + "\" " + frac
    }
}

