//
//  APIConfiguration.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/21/22.
//

import Foundation

protocol APIConfiguration {
    var path: String { get }
    var method: String { get }
    var parameters: [URLQueryItem] { get }
}
