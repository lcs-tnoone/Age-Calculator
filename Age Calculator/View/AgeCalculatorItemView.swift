//
//  AgeCalculatorItemView.swift
//  Age Calculator
//
//  Created by Thomas Noone on 2025-03-03.
//

import SwiftUI

struct AgeCalculatorItemView: View {
    //MARK: Stored Properties
    let ageCalculator: AgeCalculator
    var body: some View {
        HStack{
            Text("\(ageCalculator.result) - \(ageCalculator.yearBorn.formatted())")
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                
                Spacer()
        }
    }
}

#Preview {
    List{
        AgeCalculatorItemView(ageCalculator: AgeCalculator(yearBorn: 2000))
    }
    .listStyle(.plain)
}

