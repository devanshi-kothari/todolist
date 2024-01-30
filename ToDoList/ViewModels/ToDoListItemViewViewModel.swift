//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Devanshi Kothari on 1/12/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

//view model for a single todo list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
