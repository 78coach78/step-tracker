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
    
    static var mockData: [Healthmetric] {
        var array: [Healthmetric] = []
        for i in 0..<28 {
            let metric = Healthmetric(date: Calendar.current.date(byAdding: .day, value: -i, to: .now)!, value: .random(in: 4000...15000))
            
            array.append(metric)
            
        }
        return array
    }
}



