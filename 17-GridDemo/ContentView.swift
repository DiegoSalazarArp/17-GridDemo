//
//  ContentView.swift
//  17-GridDemo
//
//  Created by Diego Salazar Arp on 12-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        let chunkedDishes = dishes.chunked(into: 2)
        
        return List {
            
            ForEach(0..<chunkedDishes.count) {index in
                
                HStack(alignment: .center) {
                    ForEach(chunkedDishes[index]){ dish in
                        
                        Image(dish.imageURL)
                        .resizable()
                            .frame(width: 190, height: 190)
                        .shadow(radius: 5)
                           
                    }
                }
            
               
            }
        }

    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
