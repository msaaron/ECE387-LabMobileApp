//
//  ContentView.swift
//  LabMobileApp
//
//  Created by Matt Aaron on 3/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount: Int = 0;  // variable to store press count
    var body: some View {
        // Vertical stack to hold all of the components
        VStack {
            // Some simple heading text
            Text("ECE 387")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Matt Aaron")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
                .padding(.bottom)
                

            // Press counter text
            Text("Press count: \(pressCount)")
            // Button that calls buttonPress()
            Button(action: buttonPress) {
                Text("Press Me")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }

    // Method called on button press
    func buttonPress() -> Void {
        pressCount += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
