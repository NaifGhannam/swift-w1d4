//
//  ContentView.swift
//  week3day5
//
//  Created by Mac on 06/09/1446 AH.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Naif Almutairi")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                    .shadow(radius: 10)
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("Tap Me")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(width: 200)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
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
