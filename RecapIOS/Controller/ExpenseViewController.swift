//
//  ExpenseViewController.swift
//  RecapIOS
//
//  Created by mobapp02 on 24/01/2020.
//  Copyright © 2020 mobapp02. All rights reserved.
//

import UIKit

class ExpenseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    

    @IBOutlet weak var expenseTV: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        expenseTV.reloadData()
    }
    
// MARK: DATASOURCE
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExpenditureDAO.listExpenses.count
    }

// MARK: DELEGATE
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell:ExpenditureTableViewCell = expenseTV.dequeueReusableCell(withIdentifier: "cell") as! ExpenditureTableViewCell
        let currentExpenditure = ExpenditureDAO.listExpenses[indexPath.row]
        currentCell.titleLbl.text=currentExpenditure.description
        currentCell.priceLbl.text = "€ \(currentExpenditure.amount)"
        return currentCell
    }

// MARK: NAVIGATION


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
