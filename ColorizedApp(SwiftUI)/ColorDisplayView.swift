//
//  ColorRectangleView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Alexey Manokhin on 24.04.2023.
//

import SwiftUI

struct ColorDisplayView: View {
    var redColorValue: Double
    var greenColorValue: Double
    var blueColorValue: Double
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .frame (height: 150)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                    .foregroundColor(
                        Color(
                            red: redColorValue / 255,
                            green: greenColorValue / 255,
                            blue: blueColorValue / 255
                        )
                    )
                )
                .padding()
                .shadow(color: Color(
                    red: redColorValue / 200,
                    green: greenColorValue / 200,
                    blue: blueColorValue / 200),
                        radius: 5
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
