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
          
        if {
            
        
            if var bedrag = Double.init(inputTF.text!){
                switch btwTypeSC.selectedSegmentIndex {
                    case 0: bedrag *= 1.21
                    case 1: bedrag *= 1.12
                    case 2: bedrag *= 1.06
                    default: bedrag = 0
            }
        }
    }
}

