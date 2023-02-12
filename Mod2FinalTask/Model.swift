//
//  Model.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//


import Foundation

struct Result: Identifiable {
    let id = UUID()
    let width: Double
    let height: Double
    let lenght: Double
    let price: Double
    let nameOfTheOrder: String
}
    let resultForPreviews = Result(width:
                                    1,
                                   height:
                                    6,
                                   lenght: 8, price: 8, nameOfTheOrder: "CAC"
                                   )

