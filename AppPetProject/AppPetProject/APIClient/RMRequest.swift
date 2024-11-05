//
//  RMRequest.swift
//  AppPetProject
//
//  Created by pereguda on 05.11.2024.
//

import Foundation

final class RMRequest {

    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }

    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]

    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue

        if pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        return string
    }

    public var url: URL? {
        return nil
    }

    public init(
        endpoint: RMEndpoint,
        pathComponents: [String],
        queryParameters: [URLQueryItem]
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
