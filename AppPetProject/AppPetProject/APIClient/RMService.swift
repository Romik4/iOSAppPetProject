//
//  RMService.swift
//  AppPetProject
//
//  Created by pereguda on 05.11.2024.
//

import Foundation

final class RMService {

    static let shared = RMService()

    private init() {}
    
    public func execute(
        _ request: RMRequest,
        completion: @escaping (Result<String, Error>) -> Void) {
        
    }
}
