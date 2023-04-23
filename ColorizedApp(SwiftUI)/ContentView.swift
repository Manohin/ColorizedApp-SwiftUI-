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
                colorRectangleView(redColorValue: $redSliderValue, greenColorValue: $greenSliderValue, blueColorValue: $blueSliderValue)
                    
                colorSliderView(value: $redSliderValue, color: .red)
                colorSliderView(value: $greenSliderValue, color: .green)
                colorSliderView(value: $blueSliderValue, color: .blue)
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

struct colorRectangleView: View {
    
    @Binding var redColorValue: Double
    @Binding var greenColorValue: Double
    @Binding var blueColorValue: Double

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .frame (height: 150)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)//.opacity(0.3)
                    .foregroundColor(Color(
                        red: redColorValue / 50,
                        green: greenColorValue / 50,
                        blue: blueColorValue / 50)
                    ))
                .padding()
                .shadow(color: Color(
                    red: redColorValue / 200,
                    green: greenColorValue / 200,
                    blue: blueColorValue / 200), radius: 5
            )
                .foregroundColor(
                    Color(
                        red: redColorValue / 200,
                        green: greenColorValue / 200,
                        blue: blueColorValue / 200)
                ).opacity(0.7)
        }
    }
}

struct colorSliderView: View {
    @Binding var value: Double
    @State var color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .font(.title3)
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
                .shadow(radius: 2)
                .tint(color)
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}



