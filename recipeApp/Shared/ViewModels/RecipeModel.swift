//
//  RecipeModel.swift
//  recipeApp (iOS)
//
//  Created by Ryan Mata on 2/16/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
    }
}
