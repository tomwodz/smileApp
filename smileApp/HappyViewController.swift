//
//  HappyViewController.swift
//  smileApp
//
//  Created by Mini-M1 on 21/06/2024.
//

import UIKit

class HappyViewController: UIViewController {
    
    weak var delegate:happyProtocol?
    
    var smile: Float = 0.0

    @IBOutlet weak var happySlider: UISlider!
    
    override func viewDidLoad() {
        happySlider.value = smile
        super.viewDidLoad()
    }
    
    @IBAction func setSmile(_ sender: Any) {
        smile = happySlider.value
    }
    @IBAction func returnView(_ sender: Any) {
        print("Exit")
        delegate?.returnSmile(self, smileToSet: smile)
    }
}

protocol happyProtocol: class {
    func returnSmile(_ controller: HappyViewController, smileToSet smile: Float)
}
