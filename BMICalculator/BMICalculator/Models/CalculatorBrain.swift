//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Jeanette on 1/25/25.
//  
//

import Foundation

struct CalculatorBrain {
    var bmi: BMI
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmi = (weight) / pow(height, 2.0)
        self.bmi.value = bmi
        self.bmi.setCategory(bmi)
    }
    
    func getBMIValue() -> String {
        return String(format: "%0.1f",self.bmi.value)
    }
}
