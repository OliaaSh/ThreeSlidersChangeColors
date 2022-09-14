//
//  ViewController.swift
//  ThreeSlidersChangeColors
//
//  Created by Olga Shkredova on 18.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorScreen: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorScreen.layer.cornerRadius = 10
        
        redColorValue.text = String(redColorSlider.value)
        greenColorValue.text = String(greenColorSlider.value)
        blueColorValue.text = String(blueColorSlider.value)
        
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
      }
    
    
    @IBAction func redColorChange() {
        redColorValue.text = String(round(redColorSlider.value*1000)/1000)
        colorScreen.backgroundColor = .red
        
        let redColor = CGFloat(redColorSlider.value)
        let greenColor = CGFloat(greenColorSlider.value)
        let blueColor = CGFloat(blueColorSlider.value)
        
       colorScreen.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    
    
    @IBAction func greenColorChange() {
        greenColorValue.text = String(round(greenColorSlider.value*1000)/1000)
        colorScreen.backgroundColor = .green
        
        let redColor = CGFloat(redColorSlider.value)
        let greenColor = CGFloat(greenColorSlider.value)
        let blueColor = CGFloat(blueColorSlider.value)
        
        colorScreen.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    
    
    @IBAction func blueColorChange() {
        blueColorValue.text = String(round(blueColorSlider.value*1000)/1000)
        colorScreen.backgroundColor = .blue
        
        let redColor = CGFloat(redColorSlider.value)
        let greenColor = CGFloat(greenColorSlider.value)
        let blueColor = CGFloat(blueColorSlider.value)
        
        colorScreen.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    
}

