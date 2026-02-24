//
//  ChartMath.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 24.02.2026.
//

import Foundation
import Algorithms

struct ChartMath {
    static func averageWeekdayCount(for metric: [Healthmetric]) -> [WeekdayChartData] {
        let sortedByWeekday = metric.sorted { $0.date.weekdayInt < $1.date.weekdayInt}
        let weekdayArray = sortedByWeekday.chunked(by: <#T##(Healthmetric, Healthmetric) throws -> Bool#>)
        
        
        for metric in sortedByWeekday {
            print(metric.date.weekdayInt)
        }
        
        return []
    }
}
