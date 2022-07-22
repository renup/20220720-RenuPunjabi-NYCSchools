//
//  SchoolListEndpoint.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/21/22.
//

import Foundation

enum SchoolListEndpoint: APIConfiguration {
    
    struct Constants {
        static let baseURL = "https://data.cityofnewyork.us"
        static let resource = "/resource/s3k6-pzi2.json"
    }
    
    case schoolList
    
    var path: String {
        switch self {
        case .schoolList:
            return Constants.baseURL + Constants.resource
        }
    }
    
    var method: String {
        switch self {
        case .schoolList:
            return "GET"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .schoolList:
            return []
        }
    }
    
    
}
