//
//  ViewController.swift
//  RecapIOS
//
//  Created by mobapp02 on 24/01/2020.
//  Copyright © 2020 mobapp02. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var inputTF: UITextField!
    
    @IBOutlet weak var btwTypeSC: UISegmentedControl!
    
    @IBOutlet weak var outputBTWLbl: UILabel!
    
    @IBOutlet weak var outputBedragLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func berekenBTW() {
        if var bedrag = Double.init(inputTF.text!){
            var btw:Double!
            switch btwTypeSC.selectedSegmentIndex {
                case 0: btw = 0.21
                case 1: btw = 0.12
                case 2: btw = 0.06
                default: bedrag = 0
            }
            outputBedragLbl.text = String.init(format: "%.2f", (bedrag + (bedrag * btw)))
            outputBTWLbl.text = String.init(format: "%.2f", bedrag*btw)
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        inputTF.resignFirstResponder()
    }
}

