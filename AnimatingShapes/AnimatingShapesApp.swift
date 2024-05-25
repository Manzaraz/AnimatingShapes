//
//  AnimatingShapesApp.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 23/05/2024.
//

import SwiftUI

@main
struct AnimatingShapesApp: App {
    @State var selection: Topic? = nil
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                TopicList(contentSource: TopicData.homeContent)
            } detail: {
                Text("Please select a destination")
            }
        }
    }
}
