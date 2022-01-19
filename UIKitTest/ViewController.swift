//
//  ViewController.swift
//  UIKitTest
//
//  Created by Ruben Sopra on 19/1/22.
//

import UIKit

class ViewController: UIViewController {

    var buttonCount: Int = 0;
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var switchComponent: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setSwitchText()
    }

    @IBAction func buttonTouchUpInside(_ sender: Any) {
        buttonCount += 1;
        countLabel.text = "Click count: \(buttonCount)";
    }
    
    @IBAction func switchValueChanged(_ sender: Any) {
        setSwitchText()
    }
    
    func setSwitchText() {
        if switchComponent.isOn {
            switchLabel.text = "Switch value: true";
        } else {
            switchLabel.text = "Switch value: false";
        }
    }
}

