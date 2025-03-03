//
//  AgeCalculatorViewModel.swift
//  Age Calculator
//
//  Created by Thomas Noone on 2025-03-03.
//

import Foundation

@Observable
class AgeCalculatorViewModel {
    
    // MARK: Stored Properties
    var providedYear: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var ageCalculator: AgeCalculator? {
        guard let yearBorn = Double(providedYear) else {
            recoverySuggestion = "Please provide a numerical value."
            return nil
        }
        
        recoverySuggestion = ""  // Clear error message if input is valid
        return AgeCalculator(yearBorn: yearBorn)
    }
    
    // MARK: Initializer
    init(
        providedYear: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedYear = providedYear
        self.recoverySuggestion = recoverySuggestion
    }
}

var viewmodel = AgeCalculatorViewModel(providedYear: "", recoverySuggestion: "")

