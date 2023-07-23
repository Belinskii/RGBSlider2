//
//  ContentView.swift
//  RGBSlider2
//
//  Created by Марина Иванова on 23.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 0.0
    @State private var greenSliderValue = 0.0
    @State private var blueSliderValue = 0.0
    
    var body: some View {
        ZStack {
            Color(.tintColor)
                .ignoresSafeArea()
            
                    VStack {
                        Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255)
                            .cornerRadius(20)
                        ColorSliderView(value: $redSliderValue, color: .red)
                        ColorSliderView(value: $greenSliderValue, color: .green)
                        ColorSliderView(value: $blueSliderValue, color: .blue)
                }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    @State var color: UIColor
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 40)
                .foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(Color(color))
        }
    }
}
