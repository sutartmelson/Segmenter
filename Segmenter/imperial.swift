//
//  imperial.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/17/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import Foundation


enum Measurement : Float {
    case sixteenth = 0.0625
    case eighth = 0.125
    case threeSixteenths = 0.1875
    case fourth = 0.25
    case fivesixteenths =  0.3125
    case threeeights = 0.375
    case sevensexteenths = 0.4375
    case half = 0.5
    case ninesexteenths = 0.5625
    case fiveeights = 0.625
    case elevensixteenths = 0.6875
    case threefourths = 0.75
    case thirteensixteenths = 0.8125
    case seveneights = 0.875
    case fifteensixteenths = 0.9375
    case one = 1.0
}
struct ImperialMeasurements {
    static var strings : [Float : String] = [:]
    
    init() {
        ImperialMeasurements.strings[0.0] = "0"
        ImperialMeasurements.strings[0.03125] = "1/32"
        ImperialMeasurements.strings[0.0625] = "1/16"
        ImperialMeasurements.strings[0.09375] = "3/32"
        ImperialMeasurements.strings[0.125] = "1/8"
        ImperialMeasurements.strings[0.15625] = "5/32"
        ImperialMeasurements.strings[0.1875] = "3/16"
        ImperialMeasurements.strings[0.21875] = "7/32"
        ImperialMeasurements.strings[0.25] = "1/4"
        ImperialMeasurements.strings[0.28125] = "9/32"
        ImperialMeasurements.strings[0.3125] = "5/16"
        ImperialMeasurements.strings[0.34375] = "11/32"
        ImperialMeasurements.strings[0.375] = "3/8"
        ImperialMeasurements.strings[0.40625] = "13/32"
        ImperialMeasurements.strings[0.4375] = "7/16"
        ImperialMeasurements.strings[0.46875] = "15/32"
        ImperialMeasurements.strings[0.5] = "1/2"
        ImperialMeasurements.strings[0.53125] = "17/32"
        ImperialMeasurements.strings[0.5625] = "9/16"
        ImperialMeasurements.strings[0.59375] = "19/32"
        ImperialMeasurements.strings[0.625] = "5/8"
        ImperialMeasurements.strings[0.65625] = "21/32"
        ImperialMeasurements.strings[0.6875] = "11/16"
        ImperialMeasurements.strings[0.71875] = "23/32"
        ImperialMeasurements.strings[0.75] = "3/4"
        ImperialMeasurements.strings[0.78125] = "25/32"
        ImperialMeasurements.strings[0.8125] = "13/16"
        ImperialMeasurements.strings[0.84375] = "27/32"
        ImperialMeasurements.strings[0.875] = "7/8"
        ImperialMeasurements.strings[0.90625] = "29/32"
        ImperialMeasurements.strings[0.9375] = "15/16"
        ImperialMeasurements.strings[0.96875] = "31/32"
    }
}
