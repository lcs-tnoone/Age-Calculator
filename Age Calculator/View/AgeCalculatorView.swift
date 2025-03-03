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
                
                VStack{
                    Text ("You are a \((ageCalculator.result))")
                                            
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
                    
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(height: 250)
                    
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
        // Show a title for the history
        HStack {
            Text("History")
                .bold()
            Spacer()
        }
        .padding(.vertical)
         
        // Iterate over the history of results
        List(viewModel.resultHistory) { priorResult in
            AgeCalculatorItemView(ageCalculator: priorResult)
        }
        .listStyle(.plain)
                .padding()
                .navigationTitle("Age Calculator")
        }
        
    }
    
    #Preview {
        NavigationStack{
            AgeCalculatorView()
        }
    }
