//
//  SpieleTableViewCell.swift
//  Bundesliga_180903
//
//  Created by Joachim Vetter on 03.09.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class SpieleTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var homeLabels: UILabel!
    @IBOutlet weak var guestLabels: UILabel!
    
    @IBOutlet weak var homeTextFields: UITextField!
    @IBOutlet weak var guestTextFields: UITextField!
    
    var homeGoals = [String]()
    var guestGoals = [String]()
    var myIndexPaths: IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeGoals = Array(repeating: String(), count: 9)
        guestGoals = Array(repeating: String(), count: 9)
        
    }
    
    @IBAction func homeGoalsInput(_ sender: UITextField) {
        myDataInst1.homeGoals[myIndexPaths.row] = sender.text!
    }
    
    @IBAction func guestGoalsInput(_ sender: UITextField) {
        myDataInst1.guestGoals[myIndexPaths.row] = sender.text!
        calc.scoreCalc(myIndexPath: myIndexPaths)
    }
}
