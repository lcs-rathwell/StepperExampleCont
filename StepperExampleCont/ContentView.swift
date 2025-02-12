//
//  ContentView.swift
//  StepperExampleCont
//
//  Created by Jack William Rathwell on 2025-02-12.
//

import SwiftUI
 
struct ContentView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
    var body: some View {
        VStack {
            
            HStack {
                
                Text("\(squared)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base, label: {
                Text("select first number")
            })
            
            VStack {
                HStack {
                    Text("\(squared)")
                        .font(.system(size: 96))
                }
                
                Stepper(value: $base, label: {
                    Text("select second number")
                    
                    Text ("")
                        .font(.system(size: 96))
                })
            }
        }
    }
}
 
#Preview {
    ContentView()
}
 
