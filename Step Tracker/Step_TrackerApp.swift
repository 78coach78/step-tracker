//
//  Step_TrackerApp.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 12.01.2026.
//

import SwiftUI

@main
struct Step_TrackerApp: App {
    
    let hkManager = HealthKitManager()
    
    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(hkManager)
        }
    }
}
