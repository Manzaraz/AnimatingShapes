//
//  SpinningView.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 23/05/2024.
//

import SwiftUI

struct ResetEllipse: View {
    var body: some View {
        Ellipse()
            .frame(width: 200, height: 200)
            .foregroundStyle(.orange)
    }
}

struct SpinningEllipse: View {
    @State private var width: CGFloat = 200
    
    var body: some View {
        Ellipse()
            .frame(width: width, height: 200)
            .foregroundStyle(.orange)
            .onAppear {
                withAnimation(.easeInOut.repeatForever(autoreverses: true).speed(2)) {
                    width = 0
                }
            }
    }
}


struct SpinningView: View {
    @State private var isSpinning = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if isSpinning {
                SpinningEllipse()
            } else {
                ResetEllipse()
            }
            
            Spacer()
            
            PlayResetButton(animating: $isSpinning)
        }
        .navigationTitle("Spinning Animation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SpinningView()
}
