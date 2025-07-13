//
//  WeatherButton.swift
//  AllenWeather
//
//  Created by Atalay Çıtak on 12.07.2025.
//

import SwiftUI

struct WButton: View {
    var buttonText: String
    var textColor: Color
    var BackColor: Color
    var body: some View {
        Text(buttonText)
            .font(.system(size: 18, weight: .medium, design: .default))
            .frame(width: 280, height: 30)
            .foregroundColor(textColor)
            .background(BackColor)
                .cornerRadius(15)
    }
}

