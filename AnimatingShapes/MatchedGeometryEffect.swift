//
//  MatchedGeometryEffect.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 25/05/2024.
//

import SwiftUI

struct MatchedGeometryEffect: View {
    @State var exchange = false
    
    private func circle() -> some View {
        Circle()
            .fill(.red)
            .frame(width: 44, height: 44)
    }
    
    private func rectangle() -> some View {
        Rectangle()
            .fill(.yellow)
            .frame(width: 200, height: 50)
    }
    
    var body: some View {
        VStack {
            if exchange {
                circle()
                rectangle()
            } else {
                rectangle()
                circle()
            }
        }
        .padding()
        .onTapGesture {
            withAnimation {
                exchange.toggle()
            }
        }
    }
}

#Preview {
    MatchedGeometryEffect()
}
