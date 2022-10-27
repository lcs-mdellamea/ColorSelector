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
    
    // The selected hue expressed as a value between 0 and 1.0
    private var hue: Double {
        return selectHue / 360.0
    }
    // Make the color that SwiftUI will use to set the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    
    private var darkerColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.6)
    }
    
    private var darkestColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.3)
    }
    
    // Interface
    
    var body: some View {
        VStack {
            
            VStack {
                
            }
            .frame(width: 200, height: 200)
            .background(baseColour)
            
            Text("Hue")
                .bold()
            
            Text("\(selectHue.formatted(.number.precision(.fractionLength(1))))°")
            
            Slider(value: $selectHue,
                   in: 0...360,
                   label: { Text("Hue") },
                   minimumValueLabel: { Text("0")},
                   maximumValueLabel: { Text("360")})
            
            HStack(spacing: 0) {
                VStack {
                    
                }
                .frame(width: 50, height: 50)
                .background(baseColour)
                
                VStack {
                    
                }
                .frame(width: 50, height: 50)
                .background(darkerColour)
                
                VStack {
                    
                }
                .frame(width: 50, height: 50)
                .background(darkestColour)
            }
            
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
