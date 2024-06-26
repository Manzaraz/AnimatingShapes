//
//  ExplodingView.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 23/05/2024.
//

import SwiftUI

struct ExplodingView: View {
    @State private var isExploded = false
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                ForEach(0..<75) { _ in
                    Rectangle()
                        .rotation(Angle(degrees: Double.random(in: 0..<360)))
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.indigo)
                        .offset(
                            x: isExploded ? (Double.random(in: -1...1) * 300) : 0,
                            y: isExploded ? (Double.random(in: -1...1) * 300) : 0)
                        .opacity(isExploded ? 0 : 1)
                        .animation(.easeInOut.speed(0.6), value: isExploded)
                        .padding()
                }
                
                
                Rectangle()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.indigo)
                    .opacity(isExploded ? 0 : 1)
                    .animation(.easeInOut.speed(0.6), value: isExploded)
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
            
            Spacer()
            
            PlayResetButton(animating: $isExploded)
        }
        .navigationTitle("Explosion Animation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ExplodingView()
}
