//
//  SchoolListViewModel.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/20/22.
//

import Combine
import Foundation
import SwiftUI

final class SchoolListViewModel: ObservableObject {
    
    @Published var schoolList: [School] = []
    
    var router: SchoolListRouter
    
    init(router: SchoolListRouter) {
        self.router = router
    }
    
    func fetchSchoolList() {
        router.getHighSchoolList {[weak self] result in
            switch result {
            case .success(let response):
                self?.schoolList = response
            case .failure(let error):
                print("error during school list fetch = \(error.description)")
            }
        }
    }
    
}
