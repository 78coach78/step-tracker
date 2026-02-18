//
//  Healthmetric.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 18.02.2026.
//

import Foundation

struct Healthmetric: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}
