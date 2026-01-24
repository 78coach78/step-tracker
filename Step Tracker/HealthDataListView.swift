//
//  HealthDataListView.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 24.01.2026.
//

import SwiftUI

struct HealthDataListView: View {
    
    var metric: HealthMetricContext
    
    var body: some View {
        List(0..<28) { i in
        HStack {
            Text(Date(), format: .dateTime.month().day().year())
            Spacer()
            Text(10000, format: .number.precision(.fractionLength(metric == .steps ? 0 : 1)))
            }
        }
        .navigationTitle(Text(metric.title))
    }
}

#Preview {
    HealthDataListView(metric: .steps)
}
