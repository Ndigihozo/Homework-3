//
//  ViewController.swift
//  Homework #3
//
//  Created by d.igihozo on 3/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = false

    @IBOutlet var bulbImage: UIImageView!
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        if lightOn {
            bulbImage.image = UIImage(named:"On")
            lightButton.setTitle("ON", for: .normal)
            
        }
        
        else {
            bulbImage.image = UIImage(named:"Off")
            lightButton.setTitle("OFF", for: .normal)
        }
    }
    
    @IBAction func OnButtonPress(_ sender: Any) {
        lightOn.toggle()
        updateUI()
        }
    }
