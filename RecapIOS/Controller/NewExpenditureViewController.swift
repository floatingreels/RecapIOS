//
//  NewExpenditureViewController.swift
//  RecapIOS
//
//  Created by mobapp02 on 24/01/2020.
//  Copyright © 2020 mobapp02. All rights reserved.
//

import UIKit

class NewExpenditureViewController: UIViewController {

    @IBOutlet weak var omschrijvingTV: UITextView!
        
    @IBOutlet weak var newPriceTF: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        @IBAction func addNewExpenditure() {
        if let omschrijving = omschrijvingTV.text, let price = Double(newPriceTF.text!) {
            ExpenditureDAO.listExpenses.append(Expenditure(description: omschrijving, amount: price))
        }
        
    }
}
