//
//  TabView.swift
//  StepperExampleCont
//
//  Created by Jack William Rathwell on 2025-02-12.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView() {
            
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Subtraction")
                }
                .tag(1)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiply")
                }
                .tag(2)
            
            AdditionView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Addtion")
                }
                .tag(3)
            
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Division")
                }
                .tag(4)
            
        }
    }
}
#Preview {
    LandingView()
}


