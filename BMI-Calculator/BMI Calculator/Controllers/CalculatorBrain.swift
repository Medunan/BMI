//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Medunan on 03/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2 )
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more food!", color: UIColor(named: "blue") ?? .red )
             
        }
        else if bmiValue > 18.5 && bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "You are in normal range!", color: UIColor(named: "green") ?? .black)
            
        }
        
        else if bmiValue > 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Eat fewer food!", color: UIColor(named: "red") ?? .blue)

        }
       
        
    }
    
    func getBmiValue() -> String {
        let bmiToDecimal =  String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        
        let advice = bmi?.advice ?? "None"
        
        return advice
    }
    
    func getColor() -> UIColor {
        
        let color = bmi?.color ?? .white
        
        return color
    }
    
    
    
      
}
