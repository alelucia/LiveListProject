//
//  CountryController.swift
//  LiveListProject
//
//  Created by user187924 on 5/13/21.
//

import Foundation

class CountryController{

    //Create a variable(array) which will hold the data for the list
    var countries: [CountryModel]

    init(){
        self.countries = [
            CountryModel(id: UUID(), name: "Mexico", population: "127M"),
            CountryModel(id: UUID(), name: "Canada", population: "37M"),
            CountryModel(id: UUID(), name: "France", population: "67M"),
            CountryModel(id: UUID(), name: "Italy", population: "60M"),
            CountryModel(id: UUID(), name: "China", population: "1388M"),
        ]
    }
}
