//
//  imperial.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/17/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import Foundation


enum Measurement : Float {
    case thirtysecond = 0.03125
    case sixteenth = 0.0625
    case threethirtyseconds = 0.09375
    case eighth = 0.125
    case fivethirtyseconds = 0.15625
    case threeSixteenths = 0.1875
    case seventhirtyseconds = 0.21875
    case fourth = 0.25
    case ninethirtyseconds = 0.28125
    case fivesixteenths =  0.3125
    case eleventhirtyseconds = 0.34375
    case threeeights = 0.375
    case thirteenthirtyseconds = 0.40625
    case sevensexteenths = 0.4375
    case fifteenthirtyseconds = 0.46875
    case half = 0.5
    case seventeenthirtyseconds = 0.53125
    case ninesexteenths = 0.5625
    case nineteenthirtyseconds = 0.59375
    case fiveeights = 0.625
    case twentyonethirtyseconds = 0.65625
    case elevensixteenths = 0.6875
    case twentythreethirtyseconds = 0.71875
    case threefourths = 0.75
    case twentyfivethirtyseconds = 0.78125
    case thirteensixteenths = 0.8125
    case twentyseventhirtyseconds = 0.84375
    case seveneights = 0.875
    case twentyninethirtyseconds = 0.90625
    case fifteensixteenths = 0.9375
    case thirtyonethirtyseconds = 0.96875
    case one = 1.0
}
struct ImperialMeasurements {
    static var strings : [Float : String] = [
        0.0 : "0",
        0.03125 : "1/32",
        0.0625 : "1/16",
        0.09375 : "3/32",
        0.125 : "1/8",
        0.15625 : "5/32",
        0.1875 : "3/16",
        0.21875 : "7/32",
        0.25 : "1/4",
        0.28125 : "9/32",
        0.3125 : "5/16",
        0.34375 : "11/32",
        0.375 : "3/8",
        0.40625 : "13/32",
        0.4375 : "7/16",
        0.46875 : "15/32",
        0.5 : "1/2",
        0.53125 : "17/32",
        0.5625 : "9/16",
        0.59375 : "19/32",
        0.625 : "5/8",
        0.65625 : "21/32",
        0.6875 : "11/16",
        0.71875 : "23/32",
        0.75 : "3/4",
        0.78125 : "25/32",
        0.8125 : "13/16",
        0.84375 : "27/32",
        0.875 : "7/8",
        0.90625 : "29/32",
        0.9375 : "15/16",
        0.96875 : "31/32"]
    
}
