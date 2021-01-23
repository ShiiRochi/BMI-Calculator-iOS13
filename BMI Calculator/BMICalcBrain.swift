//
//  BMICalcBrain.swift
//  BMI Calculator
//
//  Created by Денис Богданенко on 24.01.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMICalcBrain {
    var bmi: BMI?;
    
    mutating func calculateBMI (weight: Float, height: Float) {
        // TODO: подправить вычисление,
        // поскольку бывает что попадаешь на 80,
        // но в разных случаях показывает разные результат.
        // То есть в случае высоты 1.8 вес 80 может как показать зелёный цвет,
        // так и красный.
        let bmiValue: Float = weight / (height * height)
        /**
         * TODO: make random advices for each bmi category
         */
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1));
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1));
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1));
        };
    };
    
    func getBMIValue () -> Float {
        return bmi?.value ?? 0.0;
    };
    
    func getBMIAdvice () -> String {
        return bmi?.advice ?? "You're keeping good!";
    };
    
    func getBMIColor () -> UIColor {
        return bmi?.color ?? .clear;
    };
};
