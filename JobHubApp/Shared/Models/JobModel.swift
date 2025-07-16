//
//  JobModel.swift
//  JobHubApp
//
//  Created by Rodrigo Cerqueira Reis on 16/07/25.
//

import Foundation

struct JobResponse: Codable {
    let results: [Job]
}

struct Job: Codable, Identifiable {
    let id = UUID()
    let title: String
    let company: Company
    let location: Location
    let description: String
    let redirect_url: URL
    let created: String

    enum CodingKeys: String, CodingKey {
        case title
        case company
        case location
        case description
        case redirect_url
        case created
    }
}

struct Company: Codable {
    let display_name: String
}

struct Location: Codable {
    let display_name: String
}
