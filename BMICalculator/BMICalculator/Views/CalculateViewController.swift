//
//  ViewController.swift
//  BMICalculator
//
//  Created by Jeanette on 21/25/25.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain(bmi:BMI(value: 0.0, advice: "", category: .overweight))
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightLabelImperial: UILabel!
    @IBOutlet weak var weightLabelImperial: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = floor(sender.value*100) / 100
        let height = Utility.metersToFeetAndInches(Double(value))
        
        heightLabel.text = String(value) + "m"
        heightLabelImperial.text = "\(height.feet)' \(height.inches)″"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        let weight = Utility.kgToLb(Double(value))
        
        weightLabel.text = String(value) + "kg"
        weightLabelImperial.text = "\(weight) lbs"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(heightSlider.value, weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            guard let destinationVC = segue.destination as? ResultViewController else { return }
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
            let color = calculatorBrain.bmi.color
            let advice = calculatorBrain.bmi.advice
            destinationVC.updateUI(customColor: color, advice: advice)
        }
    }
}

