//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Денис Богданенко on 23.01.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: Float? = 0.0;
    
    var bmiAdvice: String?;
    
    var bmiColor: UIColor?;
    
    @IBOutlet weak var bmiValueLabel: UILabel!;
    
    @IBOutlet weak var bmiAdviceLabel: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValueLabel.text = String(format: "%.1f", bmiValue!);
        
        bmiAdviceLabel.text = bmiAdvice;
        
        view.backgroundColor = bmiColor;
    }
    

    @IBAction func onRecalculateTouch(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
