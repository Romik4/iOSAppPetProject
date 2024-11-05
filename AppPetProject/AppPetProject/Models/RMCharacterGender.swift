//
//  RMCharacterGender.swift
//  AppPetProject
//
//  Created by pereguda on 05.11.2024.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // 'Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
