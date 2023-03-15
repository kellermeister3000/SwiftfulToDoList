//
//  SwiftfulToDoListApp.swift
//  SwiftfulToDoList
//
//  Created by Philip Keller on 3/14/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model = data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct SwiftfulToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
