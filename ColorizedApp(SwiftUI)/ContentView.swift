//
//  ContentView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Alexey Manokhin on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.blue).opacity(0.4)
                .ignoresSafeArea()
            VStack {
                ColorDisplayView(
                    redColorValue: redSliderValue,
                    greenColorValue: greenSliderValue,
                    blueColorValue: blueSliderValue
                )
                
                ColorSliderView(value: $redSliderValue, color: .red)
                ColorSliderView(value: $greenSliderValue, color: .green)
                ColorSliderView(value: $blueSliderValue, color: .blue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



