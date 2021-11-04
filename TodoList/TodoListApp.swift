//
//  TodoListApp.swift
//  TodoList
//
//  Created by Abdullah AlRashoudi on 11/4/21.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
