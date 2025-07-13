//
//  ContentView.swift
//  AllenWeather
//
//  Created by Atalay Çıtak on 12.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ?  .black : .blue, midColor: isNight ?  .gray: .cyan , bottomColor: .white)
            VStack{
            
                CityView(city: "Balikesir")
                VStack(spacing:10){
                    mainTempatureView(weatherimage: isNight ? "moon.stars.fill" : "sun.max.fill", nowshotempature: isNight ? "20°C" :"34°C")
                    
                }
                Spacer()
                
                HStack{
                    ExtractedView(dayofWeek: "M", imageName: "sun.max.fill", tempature: "35°C")
                    ExtractedView(dayofWeek: "TD", imageName: "sun.max.fill", tempature: "35°C")
                    ExtractedView(dayofWeek: "WD", imageName: "cloud.bolt.fill", tempature: "27°C")
                    ExtractedView(dayofWeek: "THRS", imageName: "cloud.rain.fill", tempature: "48°C")
                    ExtractedView(dayofWeek: "FR", imageName: "cloud.sun.fill", tempature: "30°C")
                    
                }
                Spacer()
                Button{
                    isNight.toggle()
                }
                label: {
                    WButton(buttonText: "Change Day Time", textColor: .blue, BackColor: .white)
               
                    
                }
                 Spacer()
                
            }
                
           
        }
        
    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    var dayofWeek: String
    var imageName: String
    var tempature : String
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size: 25, weight: .medium, design: .default))
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text(tempature)
                .font(.system(size: 20, weight: .medium, design: .default))
            
            
        }
    }
}

struct BackgroundView: View {
    var topColor : Color
    var midColor : Color
    var bottomColor : Color
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,midColor,  bottomColor]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
struct CityView: View {
    var city : String
    var body: some View {
        Text(city)
            .font(.system(size: 30, weight: .heavy, design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}
struct mainTempatureView: View {
    var weatherimage : String
    var nowshotempature : String
    var body: some View {
        Image(systemName: weatherimage)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text(nowshotempature)
            .font(.system(size: 40, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding()
        }
}
