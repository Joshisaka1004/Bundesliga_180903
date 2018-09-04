//
//  ViewController.swift
//  Bundesliga_180903
//
//  Created by Joachim Vetter on 03.09.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class SpieleVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        readTextFile()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDataInst1.homeTeams.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = myTableView.dequeueReusableCell(withIdentifier: "myCells", for: indexPath) as! SpieleTableViewCell
        cells.homeLabels.text = myDataInst1.homeTeams[indexPath.row]
        cells.guestLabels.text = myDataInst1.guestTeams[indexPath.row]
        cells.homeTextFields.text = myDataInst1.homeGoals[indexPath.row]
        cells.guestTextFields.text = myDataInst1.guestGoals[indexPath.row]
        cells.myIndexPaths = indexPath
        return cells
    }
    
    func readTextFile() {
        if let myPath = Bundle.main.path(forResource: "Bundesliga18-19", ofType: "txt") {
            let teams = myPath.conversion()
            teamsToDataModel(myArray: teams)
        }
    }
    
    func teamsToDataModel(myArray: [String]) {
        for i in 0..<myArray.count {
            if i % 2 == 0 {
                myDataInst1.homeTeams.append(myArray[i])
            } else {
                myDataInst1.guestTeams.append(myArray[i])
            }
        }
    }
    
}

extension String {
    func conversion() -> [String] {
        if let string1 = try? String(contentsOfFile: self) {
            let array1 = string1.components(separatedBy: "\n")
            let string2 = array1.joined(separator: "-:-")
            let array2 = string2.components(separatedBy: "-:-")
            return array2
        }
        return [String]()
    }
    
}
