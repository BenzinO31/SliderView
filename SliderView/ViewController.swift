//
//  ViewController.swift
//  SliderView
//
//  Created by Macbook on 25.03.2025.
//

import UIKit

final class ViewController: UIViewController {
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
        let roundedValue = round(sliderRed.value * 100) / 100
        redLabel.text = roundedValue.formatted()
        updateColor()
    }
    @IBAction func sliderActionGreen(){
        let roundedValue = round(sliderGreen.value * 100) / 100
        greenLabel.text = roundedValue.formatted()
        updateColor()
    }
    @IBAction func sliderActionBlue(){
        let roundedValue = round(sliderBlue.value * 100) / 100
        blueLabel.text = roundedValue.formatted()
        updateColor()
    }
    
    private func setupRedLabel() {
        redLabel.text = String(format: sliderRed.value.formatted(), "%.2f")
    }
    private func setupGreenLabel() {
        greenLabel.text = String(format: sliderGreen.value.formatted(),"%.2f")
    }
    private func setupBlueLabel() {
        blueLabel.text = String(format: sliderBlue.value.formatted(),"%.2f")
    }
    
    private func updateColor() {
        let red = CGFloat(sliderRed.value)
        let green = CGFloat(sliderGreen.value)
        let blue = CGFloat(sliderBlue.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

