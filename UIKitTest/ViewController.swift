//
//  ViewController.swift
//  UIKitTest
//
//  Created by Ruben Sopra on 19/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonCount: Int = 0
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var switchComponent: UISwitch!
    @IBOutlet weak var sliderComponent: UISlider!
    @IBOutlet weak var textFieldComponent: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setSwitchText()
        setSliderText()
    }
    
    @IBAction func buttonTouchUpInside(_ sender: Any) {
        buttonCount += 1
        countLabel.text = "Click count: \(buttonCount)"
    }
    
    @IBAction func switchValueChanged(_ sender: Any) {
        setSwitchText()
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        setSliderText()
    }
    
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        
        if text.count == 0 {
            textFieldLabel.text = "(Type anything)"
        } else {
            textFieldLabel.text = sender.text
        }
    }
    
    func setSwitchText() {
        if switchComponent.isOn {
            switchLabel.text = "Switch value: true"
        } else {
            switchLabel.text = "Switch value: false"
        }
    }
    
    func setSliderText() {
        sliderLabel.text = "Slider progress: \(sliderComponent.value)"
    }
}

