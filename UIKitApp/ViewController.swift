//
//  ViewController.swift
//  UIKitApp
//
//  Created by Ilya Kokorin on 10.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var sliderSlider: UISlider!
    @IBOutlet var segmentLabel: UILabel!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var textField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchSelector: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedController.insertSegment(withTitle: "Third", at: 2, animated: false)
        textLabel.text = ""
        textLabel.font = textLabel.font.withSize(30)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 2
        sliderSlider.value = 1
        sliderSlider.minimumValue = 1
        sliderSlider.maximumValue = 100
        sliderSlider.minimumTrackTintColor = .green
        sliderSlider.maximumTrackTintColor = .yellow
        sliderSlider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 0.5)
        mainButton.layer.cornerRadius = 10
        textField.keyboardType = .numberPad
    }

    @IBAction func segmentedControllerAction(_ sender: Any) {
        switch  segmentedController.selectedSegmentIndex {
        case 0:
            textLabel.text = "сегмент 0"
            textLabel.textColor = .red
        case 1:
            textLabel.text = "сегмент 1"
            textLabel.textColor = .blue
        case 2:
            textLabel.text = "сегмент 2"
            textLabel.textColor = .green
        default:
            break
        }
        
    }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        segmentLabel.text = dateFormatter.string(from: datePicker.date)
    }
    @IBAction func doneButtonAction() {
        segmentLabel.text = textField.text
    }
    @IBAction func sliderAction(_ sender: Any) {
        segmentLabel.text = "\(Int(sliderSlider.value))"
    }
    @IBAction func switchSelectorAction(_ sender: Any) {
        segmentedController.isHidden = switchSelector.isOn
    }
}

