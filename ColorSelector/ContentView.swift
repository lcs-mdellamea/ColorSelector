//
//  ContentView.swift
//  ColorSelector
//
//  Created by Madison Dellamea on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored properties
    @State private var selectHue = 0.0
    // MARK: Computed properties
    
    // Interface
    
    var body: some View {
        VStack {
            
            VStack {
                
            }
            .frame(width: 200, height: 200)
            .background(Color.blue)
            
            Text("Hue")
                .bold()
            
            Text("\(selectHue)°")
            
            Slider(value: $selectHue,
                   in: 0...360,
                   label: { Text("Hue") },
                   minimumValueLabel: { Text("0")},
                   maximumValueLabel: { Text("360")})
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
