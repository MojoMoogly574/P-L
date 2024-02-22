//
//  Constants.swift
//  P$L
//
//  Created by J. DeWeese on 2/22/24.
//

import SwiftUI

@Observable
class Constants {
    static let shared = Constants()
    
    var appTint: String = UserDefaults.standard.string(forKey: "appTint") ?? "colorOrange"
    
    var tintColor: Color {
        return tints.first { $0.color == appTint }?.value ?? .red
    }
}

