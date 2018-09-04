//
//  Calculations.swift
//  Bundesliga_180903
//
//  Created by Joachim Vetter on 04.09.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import Foundation

class Calculations {
    var scorePerTeam = [String : (Int, String, String)]()
    var goalsHome = Array(repeating: Int(), count: 9)
    var goalsGuests = Array(repeating: Int(), count: 9)
    
    func scoreCalc(myIndexPath: IndexPath) {
        if Int(myDataInst1.homeGoals[myIndexPath.row]) != nil, Int(myDataInst1.guestGoals[myIndexPath.row]) != nil  {
            goalsHome[myIndexPath.row] = Int(myDataInst1.homeGoals[myIndexPath.row])!
            let temp = Int(myDataInst1.homeGoals[myIndexPath.row])! > Int(myDataInst1.guestGoals[myIndexPath.row])! ? 3 : 0
            scorePerTeam["\(myDataInst1.homeTeams[myIndexPath.row])"] = (temp, "\(myDataInst1.homeGoals[myIndexPath.row])", "\(myDataInst1.guestGoals[myIndexPath.row])")
        }
        print(scorePerTeam)
    }
}

let calc = Calculations()
