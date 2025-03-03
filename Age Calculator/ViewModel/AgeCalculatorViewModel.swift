//
//  AgeCalculatorViewModel.swift
//  Age Calculator
//
//  Created by Thomas Noone on 2025-03-03.
//

import Foundation

@Observable
class AgeCalculatorViewModel {
    
    
    var resultHistory: [AgeCalculator] = []
    
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
   
    // MARK: Function(s)
    func saveResult() {
        
        // When there is a valid power based on user input...
        if let yearborn = self.ageCalculator {
            
            // ... save that evaluated power at the top of the history of
            // results
            //
            // NOTE: By inserting the newly evaluated power at the top of
            //       the array, we ensure the user sees
            //       the most recent result first.
            self.resultHistory.insert(yearborn, at: 0)
        }
        
    }


}
var viewmodel = AgeCalculatorViewModel(providedYear: "", recoverySuggestion: "")

