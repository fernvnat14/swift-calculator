//
//  CalculatorViewController.swift
//  IncreaseNumber
//
//  Created by A667271 A667271 on 13/12/2566 BE.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var inputPreviewLabel: UILabel!
    
    // Numbers
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    
    // Clear
    @IBOutlet weak var clearBtn: UIButton!
    
    // Operators
    @IBOutlet weak var additionBtn: UIButton!
    @IBOutlet weak var subtractionBtn: UIButton!
    @IBOutlet weak var multiplicationBtn: UIButton!
    @IBOutlet weak var divisionBtn: UIButton!
    @IBOutlet weak var equalBtn: UIButton!
    
    var previewLabel: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        inputPreviewLabel.text = String(0)
        
        let keypadButtons: [UIButton] = [
            oneBtn, twoBtn, threeBtn, fourBtn, fiveBtn,
            sixBtn, sevenBtn, eightBtn, nineBtn, zeroBtn,
            additionBtn, subtractionBtn, multiplicationBtn,
            divisionBtn, equalBtn, clearBtn
        ]
        keypadButtons.forEach { styleButton($0) }
    }
    
    func calculate(_ str: String) -> Int {
        let expression = NSExpression(format: str)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return 0
        }
    }
    
    func styleButton(_ button: UIButton) {
        button.layer.cornerRadius = 25.0
        button.layer.backgroundColor = UIColor.systemGray6.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20.0)
    }

    // Trigger Numbers
    @IBAction func triggerOneBtn(_ sender: Any) {
        previewLabel.append("1")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerTwoBtn(_ sender: Any) {
        previewLabel.append("2")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerThreeBtn(_ sender: Any) {
        previewLabel.append("3")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerFourBtn(_ sender: Any) {
        previewLabel.append("4")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerFiveBtn(_ sender: Any) {
        previewLabel.append("5")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerSixBtn(_ sender: Any) {
        previewLabel.append("6")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerSevenBtn(_ sender: Any) {
        previewLabel.append("7")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerEightBtn(_ sender: Any) {
        previewLabel.append("8")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerNineBtn(_ sender: Any) {
        previewLabel.append("9")
        inputPreviewLabel.text = previewLabel
    }
    
    @IBAction func triggerZeroBtn(_ sender: Any) {
        if let first = previewLabel.first, first != "0",
            let previous = previewLabel.last, previous.isNumber  {
            previewLabel.append("0")
            inputPreviewLabel.text = previewLabel
        }
    }
    
    // Trigger Clear
    @IBAction func triggerClearBtn(_ sender: Any) {
        previewLabel = ""
        inputPreviewLabel.text = String(0)
    }
    
    // Trigger Operators
    @IBAction func triggerAdditionBtn(_ sender: Any) {
        if let previous = previewLabel.last, previous.isNumber {
            previewLabel.append("+")
            inputPreviewLabel.text = previewLabel
        }
    }
    
    @IBAction func triggerSubtractionBtn(_ sender: Any) {
        if let previous = previewLabel.last, previous.isNumber {
            previewLabel.append("-")
            inputPreviewLabel.text = previewLabel
        }
    }
    
    @IBAction func triggerMultiplicationBtn(_ sender: Any) {
        if let previous = previewLabel.last, previous.isNumber {
            previewLabel.append("*")
            inputPreviewLabel.text = previewLabel
        }
    }
    
    @IBAction func triggerDivisionBtn(_ sender: Any) {
        if let previous = previewLabel.last, previous.isNumber {
            previewLabel.append("/")
            inputPreviewLabel.text = previewLabel
        }
    }
    
    @IBAction func triggerEqualBtn(_ sender: Any) {
        if let previous = previewLabel.last, previous.isNumber {
            let result = calculate(previewLabel)
            inputPreviewLabel.text = String(result)
            previewLabel = String(result)
        }
    }
}
