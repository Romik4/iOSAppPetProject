//
//  RMCharacterStatus.swift
//  AppPetProject
//
//  Created by pereguda on 05.11.2024.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
