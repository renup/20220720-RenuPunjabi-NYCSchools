//
//  SchoolListRow.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/21/22.
//

import SwiftUI

struct SchoolListRow: View {
    
    var school: School
    
    init(_ school: School) {
        self.school = school
    }
    
    var body: some View {
        VStack {
            Text(school.schoolName)
        }
        
    }
}

//struct SchoolListRow_Previews: PreviewProvider {
//    static var previews: some View {
//        SchoolListRow(School(from: <#T##Decoder#>))
//    }
//}
