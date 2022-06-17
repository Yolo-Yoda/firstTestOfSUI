//
//  Trimed.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import Foundation

@propertyWrapper
struct Trimmed {
    
    private(set) var value = String()
    
    var wrappedValue: String {
        get {
            return value
        }
        set {
            value = newValue.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
