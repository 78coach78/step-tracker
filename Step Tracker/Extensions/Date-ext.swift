//
//  Date-ext.swift
//  Step Tracker
//
//  Created by Roland Ramseier on 24.02.2026.
//

import Foundation

extension Date {
    var weekdayInt: Int {
        Calendar.current.component(.weekday, from: self)
    }
}
