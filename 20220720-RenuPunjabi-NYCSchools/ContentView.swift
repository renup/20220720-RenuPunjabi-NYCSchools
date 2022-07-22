//
//  ContentView.swift
//  20220720-RenuPunjabi-NYCSchools
//
//  Created by Anil Punjabi on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: SchoolListViewModel = SchoolListViewModel(router: SchoolListRouter())
    
    var body: some View {
        List {
            ForEach(viewModel.schoolList) { school in
                SchoolListRow(school)
            }
        }
        .navigationTitle("Schools")
        .padding()
        .onAppear {
            self.viewModel.fetchSchoolList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
