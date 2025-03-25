//
//  UIColor+Extensions.swift
//  BMICalculator
//
//  Created by Jeanette on 1/25/25.
//  

import UIKit

extension UIColor {
    enum CustomColor: String {
        case pastelBlue = "PastelBlue" //rgb(134 208 255)
        case pastelGreen = "PastelGreen" //rgb(119 255 138)
        case pastelYellow = "PastelYellow" //rgb(255 244 125)
        case pastelOrange = "PastelOrange" //rgb(255 169 107)
        case pastelRed = "PastelRed" //rgb(255 133 131)
        
        var color: UIColor {
            switch self {
            case .pastelBlue: return UIColor(
                cgColor: .init(
                    red: 134.0/255.0,
                    green: 208.0/255.0,
                    blue: 255.0/255.0,
                    alpha: 1.0))
            case .pastelGreen: return UIColor(cgColor: .init(red: 119.0/255.0, green: 255.0/255.0, blue: 138.0/255.0, alpha: 1.0))
            case .pastelYellow: return UIColor(cgColor: .init(red: 255.0, green: 244.0, blue: 125.0, alpha: 1.0))
            case .pastelOrange: return UIColor(cgColor: .init(red: 255.0, green: 169.0, blue: 107.0, alpha: 1.0))
            case .pastelRed: return UIColor(cgColor: .init(red: 255.0/255.0, green: 133.0/255.0, blue: 131.0/255.0, alpha: 1.0))
            }
        }
    }
}

