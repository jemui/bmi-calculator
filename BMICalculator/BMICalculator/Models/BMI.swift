//
//  BMI.swift
//  BMICalculator
//
//  Created by Jeanette on 1/25/25.
//  

import UIKit
import Foundation

struct BMI {
    var value: Float
    var advice: String
    var category: Category
    var color: UIColor.CustomColor {
        get {
            switch self.category {
            case .underweight:
                return .pastelBlue
            case .normalweight:
                return .pastelGreen
            case .overweight:
                return .pastelRed
            }
        }
    }
    
    mutating func setCategory(_ value: Float) {
        if(value < 0.0) {return}
        switch value {
        case 0.0 ..< 18.5:
            self.category = .underweight
            self.advice = "Eat more food"
        case 18.5 ..< 24.9:
            self.category = .normalweight
            self.advice = "Keep it up!"
        default:
            self.category = .overweight
            self.advice = "Exercise time!"
        }
    }
}

enum Category {
    case underweight
    case normalweight
    case overweight
}
