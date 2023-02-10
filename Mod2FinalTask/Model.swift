//
//  Model.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//


import Foundation

struct Result: Identifiable {
    let id = UUID()
    let weight: Double
    let height: Double
    let lenght: Double
    let order: String
    let nameOfTheOrder: String
}
    let resultForPreviews = Result(weight:
                                    1,
                                   height:
                                    -6,
                                   lenght: 8, order: "CACACA", nameOfTheOrder: "CAC"
                                   )

