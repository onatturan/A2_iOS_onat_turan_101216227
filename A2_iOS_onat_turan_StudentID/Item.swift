//
//  Item.swift
//  A2_iOS_onat_turan_StudentID
//
//  Created by Onat Turan on 2025-03-28.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
