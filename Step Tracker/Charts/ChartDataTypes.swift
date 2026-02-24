//
//  ChartDataTypes.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 24.02.2026.
//

import Foundation

struct WeekdayChartData: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}
