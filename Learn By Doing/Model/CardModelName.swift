//
//  CardModelName.swift
//  Learn By Doing
//
//  Created by Vatana Chhorn on 17/01/2021.
//
import SwiftUI

 // MARK: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var imageName: String
    var callToAction : String
    var message: String
    var gradientColors: [Color]
}
