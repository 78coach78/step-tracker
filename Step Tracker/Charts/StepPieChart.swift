//
//  StepPieChart.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 26.02.2026.
//

import SwiftUI
import Charts

struct StepPieChart: View {
    
    var chartData: [WeekdayChartData]
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Label("Averiges", systemImage: "calendar")
                    .font(.title3.bold())
                    .foregroundStyle(.pink)
                
                Text("Last 28 Days")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 12)
            
          Chart {
              ForEach(chartData) { weekday in
                  SectorMark(angle: .value("Average Steps", weekday.value),
                             innerRadius: .ratio(0.618),
                             angularInset: 1)
                  .foregroundStyle(.pink.gradient)
                  .cornerRadius(6)
                
              }
            }
            .frame(height: 240)
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemBackground)))
    }
}

#Preview {
    StepPieChart(chartData: ChartMath.averageWeekdayCount(for: Healthmetric.mockData))
}
