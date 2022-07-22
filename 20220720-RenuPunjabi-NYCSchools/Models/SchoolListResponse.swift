//
//  SchoolListResponse.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/20/22.
//

import Foundation

struct School: Decodable, Identifiable {
    var id = UUID()
    let schoolName: String
    let neighborhood: String
    
    enum CodingKeys: String, CodingKey {
        case schoolName = "school_name"
        case neighborhood
    }
}
