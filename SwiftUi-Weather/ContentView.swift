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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
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
                
                HStack{
                    VStack{
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                       
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("98°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("WED")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("98°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("THUR")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                       
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("98°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("FRI")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                       
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("98°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("SAT")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                       
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("98°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                    
                    Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
