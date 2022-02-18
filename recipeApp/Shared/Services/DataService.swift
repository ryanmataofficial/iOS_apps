//
//  DataService.swift
//  recipeApp (iOS)
//
//  Created by Ryan Mata on 2/16/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if pathString is not nil, otherwise return empty Recipe array
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //Create a data object
            let data = try Data(contentsOf: url)
            
            //Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Add the unique IDs for each JSON object in recipes
                for r in recipeData {
                    r.id = UUID()
                    
                    //Add unique IDs for each JSON object in ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                //Return the recipes
                return recipeData
            }
            catch {
                //error with parsing json
                print(error)
            }
            
        }
        catch {
            //error with creating data object
            print(error)
        }
        return [Recipe]()
    }
}
