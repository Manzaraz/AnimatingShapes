//
//  Topic.swift
//  AnimatingShapes
//
//  Created by Christian Manzaraz on 25/05/2024.
//

import SwiftUI

struct Topic: Identifiable, Hashable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var systemSymbol: String
    var destination: Destination
}

