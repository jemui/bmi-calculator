//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Jeanette on 1/25/25.
//  

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        print()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateUI(customColor: UIColor.CustomColor, advice: String) {
        let color = customColor.color
        view.backgroundColor = color
        adviceLabel.text = advice
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
