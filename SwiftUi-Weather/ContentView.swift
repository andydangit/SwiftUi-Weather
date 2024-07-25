//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by FartFire on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Oklahoma City, OK")
                
               MainWeatherView(imageName: "cloud.sun.fill", temp: 98)
                
                HStack(spacing: 15){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temp: 78)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temp: 104)
                    WeatherDayView(dayOfWeek: "THUR", imageName: "sun.rain.fill", temp: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sun.rain.fill", temp: 57)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temp: 78)
                    WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.sun.bolt.fill", temp: 23)
                    
                }
                
                Spacer()
                
                Button{
                    print("tapped")
                }label: {
                    WeatherButton(title: "Change Day time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)° ")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea( .all)
    }
}


struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 7){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height:180)
            
            Text("\(temp)°")
                .font(.system(size: 64, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 43)
    }
}


