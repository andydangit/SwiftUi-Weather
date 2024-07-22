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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea( .all)
            VStack {
                Text("Oklahoma City, OK")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 7){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height:180)
                    
                    Text("98°")
                        .font(.system(size: 64, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 43)
                
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
                    Text("Changed Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
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
