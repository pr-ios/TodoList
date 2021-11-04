//
//  CoreDataManager.swift
//  TodoList
//
//  Created by Abdullah AlRashoudi on 11/4/21.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "TodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}
