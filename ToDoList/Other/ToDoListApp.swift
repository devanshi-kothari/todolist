//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Devanshi Kothari on 1/12/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
