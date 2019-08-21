//
//  ArrayExtension.swift
//  17-GridDemo
//
//  Created by Diego Salazar Arp on 12-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI


extension Array {
    func chunked (into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}



