//
//  AgeCalculator.swift
//  Age Calculator
//
//  Created by Thomas Noone on 2025-03-03.
//

import Foundation

struct AgeCalculator: Identifiable {
    //MARK: Stored Properties
    
    let id = UUID()
    
    var yearBorn: Double
    var result: String {
        if yearBorn < 1928 {
            return "Does Not Exist"
        }
        if yearBorn < 1946 {
            return "Silent Generation"
        }
        if yearBorn < 1965 {
            return "Baby Boomer"
        }
        if yearBorn < 1981 {
            return "Gen X"
        }
        if yearBorn < 1997{
            return "Millennials"
        }
        if yearBorn < 2013 {
            return "Gen Z"
        }
        if yearBorn > 2013 {
            return "Does Not exist"
        }
        return ""
    }
}
