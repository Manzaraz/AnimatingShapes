//
//  ShapeButtonStyle.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 23/05/2024.
//

import SwiftUI

struct ShapesButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 125, height: 60)
            .background(Color.blue.opacity(0.15))
            .foregroundStyle(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.bottom, 30)
    }
}

struct PlayResetButton: View {
    @Binding var animating: Bool
    var resetOnly: Bool = false
    var action: () -> Void = { }
    init(animating: Binding<Bool>, resetOnly: Bool = false, action: @escaping () -> Void = {}) {
        self._animating = animating
        self.resetOnly = resetOnly
        self.action = action
    }
    
    var body: some View {
        Button {
            animating.toggle()
            action()
        } label: {
            if resetOnly {
                Label("Reset", systemImage: "arrow.counterclockwise")
            } else {
                Label(animating ? "Reset" : "Play", systemImage: animating ? "arrow.counterclockwise" : "play.fill")
            }
        }
        .buttonStyle(ShapesButton())
    }
}

//#Preview {
//    PlayResetButton()
//}
