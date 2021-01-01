//
//  ViewController.swift
//  ChallengeTask2
//
//  Created by 山本 夏紀 on 2021/01/01.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    //UISegmentedControlの計算の処理
    @IBAction func calculateButtonPress(_ sender: Any) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultLabel.text = String(num1 + num2)
        case 1:
            resultLabel.text = String(num1 - num2)
        case 2:
            resultLabel.text = String(num1 * num2)
        case 3:
            if (num1 / num2).isInfinite {
                resultLabel.text = "0では割れません"
            } else {
                resultLabel.text = String(num1 / num2)
            }
        default:
            resultLabel.text = "NONE"
        }
    }
}

