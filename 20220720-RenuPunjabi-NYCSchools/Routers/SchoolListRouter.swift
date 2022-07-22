//
//  SchoolListAPI.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/20/22.
//

import Foundation

final class SchoolListRouter: APIRouter {
    
    func getHighSchoolList(_ completion: @escaping (Result<[School], APIError>) -> Void) {
        fetch(route: SchoolListEndpoint.schoolList, completion: completion)
    }
}
