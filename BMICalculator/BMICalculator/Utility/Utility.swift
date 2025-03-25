//
//  Utility.swift
//  BMICalculator
//
//  Created by 세차오 루카스 on 3/25/25.
//

import Foundation

class Utility {
    
    static func metersToFeetAndInches(_ meters: Double) -> (feet: String, inches: String) {
        //1 meter = 3.28084 feet
        //1 foot = 12 inches
        let feetPerMeter: Double = 3.28084
        let inchesPerFoot: Double = 12.0
        
        let inchesPerMeter = feetPerMeter * inchesPerFoot
        let totalInches = meters * inchesPerMeter
        let feet = Int(totalInches / inchesPerFoot)
        let inches = Int(totalInches.truncatingRemainder(dividingBy: inchesPerFoot))
        return (feet: String(feet), inches: String(inches))
    }
    
    static func kgToLb(_ kilograms: Double) -> String {
        let poundsPerKilo = 2.20462
        return String(format: "%0.1f", kilograms * poundsPerKilo)
    }
}
