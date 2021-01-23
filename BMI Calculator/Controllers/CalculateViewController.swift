//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabelView: UILabel!
    
    @IBOutlet weak var weightLabelView: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var height: Float = 0;
    var weight: Float = 0;
    
    var bmiCalcBrain = BMICalcBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onHeightSliderChange(_ sender: UISlider) {
        heightLabelView.text = "\(String(format: "%.2f", sender.value))m";
    }
    
    @IBAction func onWeightSliderChange(_ sender: UISlider) {
        weightLabelView.text = "\(Int(sender.value))Kg";
    }
    
    @IBAction func onCalculatePress(_ sender: UIButton) {
        bmiCalcBrain.calculateBMI(
            weight: weightSlider.value,
            height: heightSlider.value
        )
        
        performSegue(withIdentifier: "goToResults", sender: self);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResults") {
            // "!" нужен для опционалов
            let destinationVC = segue.destination as! ResultsViewController;
            destinationVC.bmiValue = bmiCalcBrain.getBMIValue();
            destinationVC.bmiAdvice = bmiCalcBrain.getBMIAdvice();
            destinationVC.bmiColor = bmiCalcBrain.getBMIColor();
        }
    }
}

