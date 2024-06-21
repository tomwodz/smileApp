//
//  ColorViewController.swift
//  smileApp
//
//  Created by Mini-M1 on 20/06/2024.
//

import UIKit

class ColorViewController: UIViewController {
    
    var redColor: Float = 0.0
    var greenColor: Float = 0.0
    var blueColor: Float = 0.0

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        redSlider.value = redColor
        greenSlider.value = greenColor
        blueSlider.value = blueColor
        super.viewDidLoad()
    }
}
