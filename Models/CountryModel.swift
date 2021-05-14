//
//  CountryModel.swift
//  LiveListProject
//
//  Created by user187924 on 5/13/21.
//

import Foundation
import Foundation

struct CountryModel: Identifiable, Hashable{

    var id: UUID             // Object Identifier, Unique identifier
    var name: String
    var population: String

    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
}
