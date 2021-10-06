//
//  ContentModel.swift
//  Learning App
//
//  Created by Szilveszter Dávid on 06.10.2021.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            
            // Try to decode the json file into an array of modues
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.modules = modules
        }
        catch {
            
            // Log error
            print(error)
        }
    }
    
}
