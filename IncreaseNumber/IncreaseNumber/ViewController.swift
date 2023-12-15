//
//  ViewController.swift
//  IncreaseNumber
//
//  Created by A667271 A667271 on 8/12/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var increaseBtn: UIButton!
    @IBOutlet weak var decreaseBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = String(count)
        
        styleButton(increaseBtn)
        styleButton(decreaseBtn)
    }
    
    private func commonInit() {
//        styleButton(increaseBtn)
//        styleButton(decreaseBtn)
    }
    
    func styleButton(_ button: UIButton) {
        button.layer.cornerRadius = 8.0
        button.layer.backgroundColor = UIColor.systemBlue.cgColor
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20)
    }

    @IBAction func increaseTapped(_ sender: Any) {
        count += 1
        numberLabel.text = String(count)
        print("increaseTapped, count = \(count)")
    }
    
    @IBAction func decreaseTapped(_ sender: Any) {
        count -= 1
        numberLabel.text = String(count)
        print("decreaseTapped, count = \(count)")
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        count = 0
        numberLabel.text = String(count)
        print("resetTapped, count = \(count)")
    }
}

