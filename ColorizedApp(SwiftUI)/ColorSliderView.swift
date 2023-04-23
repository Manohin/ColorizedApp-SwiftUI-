//
//  ColorSliderView.swift
//  ColorizedApp(SwiftUI)
//
//  Created by Alexey Manokhin on 24.04.2023.
//

import SwiftUI

struct ColorSliderView: View {
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

