//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Devanshi Kothari on 1/12/24.
//

import FirebaseFirestore
import Foundation

//view model for list of items view
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
