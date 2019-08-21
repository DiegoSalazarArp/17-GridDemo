//
//  Dish.swift
//  17-GridDemo
//
//  Created by Diego Salazar Arp on 12-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable{
    
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}

extension Dish {
    static func all() -> [Dish] {
        return [
        Dish(name: "Filete 3/4", price: 3500, imageURL: "f1"),
        Dish(name: "Humitas", price: 3000, imageURL: "h1"),
        Dish(name: "Porotos Pirco", price: 2500, imageURL: "p1"),
        Dish(name: "Spaguetti", price: 3200, imageURL: "s1")
        
        ]
    }
}
