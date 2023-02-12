//
//  Model.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//


import Foundation

struct Result: Identifiable {
    let id = UUID()
    let widthvalue: Double
    let heightvalue: Double
    let lenghtvalue: Double
    let pricevalue: Double
    let nameOfTheOrder: String
}
    let exampleResultForPreviews = Result(widthvalue:
                                    1,
                                   heightvalue:
                                    6,
                                   lenghtvalue: 8, pricevalue: 8, nameOfTheOrder: "Order"
                                   )

