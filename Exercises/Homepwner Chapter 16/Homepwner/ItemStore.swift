//
//  Copyright © 2015 Bunsan
//

import Foundation

class ItemStore {
    
    var allItems: [Item] = []
    
    let itemArchiveURL: URL = {
        
        let documentsDirectories =
            FileManager.default.urls(for: .documentDirectory,
                                     in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("items.archive")
    }()
    
    init() {
        
//      The unarchiveObject(withFile:) method will create an instance of NSKeyedUnarchiver
//      and load the archive located at the itemArchiveURL into that instance
        if let archivedItems = NSKeyedUnarchiver.unarchiveObject(withFile: itemArchiveURL.path) as? [Item] {
            allItems = archivedItems
        }
    }
    
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // Get reference to object being moved so you can re-insert it
        let movedItem = allItems[fromIndex]
        
        // Remove item from array
        allItems.remove(at: fromIndex)
        
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func saveChanges() -> Bool {
        
        print("Saving items to: \(itemArchiveURL.path)")
        
//      The archiveRootObject method takes care of saving every single Item in allItems to the itemArchiveURL.
        return NSKeyedArchiver.archiveRootObject(allItems, toFile: itemArchiveURL.path)
    }
    
}
