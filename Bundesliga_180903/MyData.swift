//
//  MyData.swift
//  Bundesliga_180903
//
//  Created by Joachim Vetter on 03.09.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import Foundation

class MyData {
    var homeTeams = [String]()
    var guestTeams = [String]()
    var homeGoals = [String]()
    var guestGoals = [String]()
    init() {
        homeGoals = Array(repeating: String(), count: 9)
        guestGoals = Array(repeating: String(), count: 9)
    }
    
}
let myDataInst1 = MyData()
