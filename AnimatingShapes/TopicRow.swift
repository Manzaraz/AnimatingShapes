//
//  TopicRow.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 25/05/2024.
//

import SwiftUI

struct TopicRowView: View {
    var title: String
    var description: String
    var systemIcon: String
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon)
                .font(.title2)
                .foregroundStyle(Color.accentColor)
                .frame(minWidth: 30, minHeight: 20)
                .padding(.trailing, 4)
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .font(Font.system(size: 20.0, weight: .semibold, design: .default))
                    .padding(.bottom, 4)
                Text(description)
                    .font(.body)
                    .foregroundStyle(Color.gray)
                
            }
        }
        .frame(minHeight: 60)
    }
}

#Preview {
    TopicRowView(title: "Animations", description: "Discover how to use animations to move shapes around the scene", systemIcon: "circle.fill")
}
