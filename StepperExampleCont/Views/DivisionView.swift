//
//  DivisionView.swift
//  StepperExampleCont
//
//  Created by Jack William Rathwell on 2025-02-12.
//

import SwiftUI
 
struct DivisionView: View {
    
    // MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed properties
    var total: Int {
        return firstNumber / secondNumber
    }
    
    var remainder: Int {
        return firstNumber % secondNumber
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("\(firstNumber)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
                HStack {
                    Text("\(secondNumber)")
                        .font(.system(size: 96))
                }
                
                Stepper(value: $secondNumber, label: {
                    Text("select second number")
                })
                    HStack {
                        Text ("\(total)")
                            .font(.system(size: 96))
                        Text ("\(remainder)")
                            .font(.system(size: 46))
            }
        }
    }
}

 
#Preview {
    LandingView()
}
