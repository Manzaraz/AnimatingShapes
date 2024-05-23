//
//  AnimatingShapesApp.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 23/05/2024.
//

import SwiftUI

@main
struct AnimatingShapesApp: App {
//    @State var selection: Topic? = nil // check this late
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                TopicList()// modify this
                
            } detail: {
                Text("Please select a destination")
            }
        }
    }
}
