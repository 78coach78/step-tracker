//
//  HealthKitPermissionPrimingView.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 25.01.2026.
//

import SwiftUI
import HealthKitUI

struct HealthKitPermissionPrimingView: View {
    
    @Environment(HealthKitManager.self) private var hKManager
    @Environment(\.dismiss) private var dismiss
    @State private var isShowingHealthKitPermission = false
    
    var description: String = """
Allow Step Tracker to access your health data.

You can also add new step or weight to Apple Health from this app. Your data is private and secured.
"""
    
    var body: some View {
        VStack(spacing: 130) {
            VStack(alignment: .leading, spacing: 12) {
                Image(.appleHealth)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .shadow(color: .gray.opacity(0.3), radius: 16)
                    .padding(.bottom, 12)
                
                Text("Apple Health Integration")
                    .font(.title2).bold()
                
                Text(description)
                    .foregroundStyle(.secondary)
            }
           Button("Connect Apple Health") {
               isShowingHealthKitPermission = true
           }
           .buttonStyle(.borderedProminent)
           .tint(.pink)
        }
        .padding(30)
        .healthDataAccessRequest(store: hKManager.store, shareTypes: hKManager.types,
                                 readTypes: hKManager.types,
                                 trigger: isShowingHealthKitPermission) { result in
        switch result {
        case .success(_):
            dismiss()
        case .failure(_):
        // handle the failure later
            dismiss()
                
            }
            
            
            }
        }
    }

#Preview {
    HealthKitPermissionPrimingView()
        .environment(HealthKitManager())
}
