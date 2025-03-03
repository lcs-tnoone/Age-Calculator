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
        if yearBorn < 1883 {
            return "Does Not Exist"
        }
        if yearBorn < 1900 {
            return "The Lost Generation"
        }
        if yearBorn < 1928 {
            return "The Greatest Generation"
        }
        if yearBorn < 1946 {
            return "Silent Generation"
        }
        if yearBorn < 1965 {
            return "Baby Boomer"
        }
        if yearBorn < 1981 {
            return "Generation X"
        }
        if yearBorn < 1997{
            return "Millennials"
        }
        if yearBorn < 2010 {
            return "Generation Z"
        }
        if yearBorn < 2024 {
            return "Generation Alpha"
        }
        if yearBorn < 2040 {
            return "Generation Beta"
        }
        if yearBorn > 2040 {
            return "Does Not exist yet"
        }
        return ""
    }
}
