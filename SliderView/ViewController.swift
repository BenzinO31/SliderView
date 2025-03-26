//
//  ViewController.swift
//  SliderView
//
//  Created by Macbook on 25.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        colorView.layer.masksToBounds = true
        setupRedLabel()
        setupGreenLabel()
        setupBlueLabel()
        updateColor()
    }
    
    @IBAction func sliderActionRed(){
        redLabel.text = sliderRed.value.formatted()
        updateColor()
    }
    @IBAction func sliderActionGreen(){
        greenLabel.text = sliderGreen.value.formatted()
        updateColor()
    }
    @IBAction func sliderActionBlue(){
        blueLabel.text = sliderBlue.value.formatted()
        updateColor()
    }
    
    private func setupRedLabel() {
        redLabel.text = sliderRed.value.formatted()
    }
    private func setupGreenLabel() {
        greenLabel.text = sliderGreen.value.formatted()
    }
    private func setupBlueLabel() {
        blueLabel.text = sliderBlue.value.formatted()
    }
    
    func updateColor() {
        let red = CGFloat(sliderRed.value)
        let green = CGFloat(sliderGreen.value)
        let blue = CGFloat(sliderBlue.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

