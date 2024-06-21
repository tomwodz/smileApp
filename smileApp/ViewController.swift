//
//  ViewController.swift
//  smileApp
//
//  Created by Mini-M1 on 20/06/2024.
//

import UIKit

class ViewController: UIViewController, happyProtocol {
    

    @IBOutlet weak var smile: SmileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToColor" {
            print("Przeszedłem na Color")
            let destinationController = segue.destination as! ColorViewController
            
            destinationController.redColor = smile.redColor
            destinationController.blueColor = smile.blueColor
            destinationController.greenColor = smile.greenColor
        } else if segue.identifier == "goToHappy" {
            print("Przeszedłem na Happy")
            
            let destinationController = segue.destination as! HappyViewController
            destinationController.smile = Float(smile.pointFromUser)
            destinationController.delegate = self
            
         } else {
             print("?")
         }
     }
    
    @IBAction func retunView(_ seque: UIStoryboardSegue){
        let souceView = seque.source as! ColorViewController
        smile.redColor = souceView.redSlider.value
        smile.blueColor = souceView.blueSlider.value
        smile.greenColor = souceView.greenSlider.value
        smile.setNeedsDisplay()
    }
    
    func returnSmile(_ controller: HappyViewController, smileToSet smileSet: Float){
        smile.pointFromUser = Double(smileSet)
        smile.setNeedsDisplay()
        print("returnSmile")
        dismiss(animated: true, completion: nil)
    }


}

