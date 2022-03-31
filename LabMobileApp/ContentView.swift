//
//  ContentView.swift
//  LabMobileApp
//
//  Created by Matt Aaron on 3/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount: Int = 0;
    var body: some View {
        VStack {
            Text("ECE 387")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Matt Aaron")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
                .padding(.bottom)
                

            Text("Press count: \(pressCount)")
            Button(action: buttonPress) {
                Text("Press Me")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }

    func buttonPress() -> Void {
        pressCount += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
