//
//  AgeCalculatorView.swift
//  Age Calculator
//
//  Created by Thomas Noone on 2025-03-03.
//

import SwiftUI
 
struct AgeCalculatorView: View {
    
    // MARK: Stored properties
    
    // Holds the view model, to track current state of
    // data within the app
    @State var viewModel = AgeCalculatorViewModel(providedYear: "", recoverySuggestion: "")
    
    // MARK: Computed properties
    var body: some View {
        VStack {
                        
            // OUTPUT
            if let ageCalculator = viewModel.ageCalculator {
                
            // Add a button so that the result can be saved
                VStack{
                    Text ("You are a \((ageCalculator.result))")
                                            
                    // Add a button so that the result can be saved
                    Button {
                        viewModel.saveResult()
                        // DEBUG: Show how many items are in the resultHistory array
                        print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                    } label: {
                        Text("Save")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)
                }
                    
                    
                    
                } else {
                    
                    // Show a message indicating that we are
                    // awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate Age",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                    )
                    .frame(height: 300)
                }
                
                // INPUT
                TextField("Year Born", text: $viewModel.providedYear)
                    .textFieldStyle(.roundedBorder)
                
            }
                .padding()
                .navigationTitle("Age Calculator")
        }
        
    }
    
    #Preview {
        NavigationStack{
            AgeCalculatorView()
        }
    }
