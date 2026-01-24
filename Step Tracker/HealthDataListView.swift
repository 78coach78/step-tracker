//
//  HealthDataListView.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 24.01.2026.
//

import SwiftUI

struct HealthDataListView: View {
    
    @State private var isShowingAddData = false
    
    @State private var adddDataDate: Date = .now
    @State private var valueToAdd: String = ""
    
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
        .sheet(isPresented: $isShowingAddData) {
            addDataView
        }
        .toolbar {
            Button("Add Data", systemImage: "plus") {
                isShowingAddData = true
            }
        }
    }
    
    var addDataView: some View {
        NavigationStack {
            Form {
                DatePicker("Date", selection: $adddDataDate, displayedComponents: .date)
                TextField("Value", text: $valueToAdd)
            }
            .navigationTitle(metric.title)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Data") {
                        //Do later
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("dismiss") {
                        //Do later
                    }
                    
                }
            }
            
           
                }
            }
        }
    
#Preview {
    NavigationStack {
        HealthDataListView(metric: .steps)
    }
}
