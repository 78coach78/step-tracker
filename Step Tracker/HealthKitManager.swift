//
//  HealthKitManager.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 04.02.2026.
//

import Foundation
import HealthKit
import Observation

@Observable class HealthKitManager {
    
    let store = HKHealthStore()
    
    let types: Set = [HKQuantityType(.stepCount), HKQuantityType(.bodyMass)]
}
