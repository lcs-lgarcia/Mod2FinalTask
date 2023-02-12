//
//  CreateTank.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

struct CreateTank: View {
    
    @State var nameOrder = ""
    
    @State var selectedGroundPercentage = 10
    
    let groundPercentages = [10, 15, 20, 0]
    
    @State var defaultGroundType = "SAND"
    
    let typeground = ["SAND", "ROCK"]
    
    @State var somePriorResult: [Result] = []
    
    @State var lenght: Double = 0.2
    
    @State var height: Double = 0.2
    
    @State var width: Double = 0.2
    
    let priceSand: Double = 0.23
    
    let priceRock: Double = 0.43
    
    var m3: Double {
        return lenght*height*width
    }
    var priceTank: Double {
        return m3*7.32
    }
    var groundPercentage: Double {
        return Double(selectedGroundPercentage) / 100
    }
    var priceAll: Double {
        return priceTank+totalWithTypeOfGround
    }
    
    
    var totalWithTypeOfGround: Double {
        
        guard defaultGroundType == "SAND" else {
            
            return m3*priceRock*Double(selectedGroundPercentage)
            
        }
        
        return m3*priceSand*Double(selectedGroundPercentage)
        
    }
    
    var name: String? {
        
        guard nameOrder == nameOrder else {
            
            return nil
        }
        
        
        return nameOrder
    }
    
    var body: some View {
        ScrollView {
            VStack{
                
                
                HStack(spacing: 5) {
                    Text("Order name:")
                        .font(.title2)
                        .bold()
                    TextField("...", text: $nameOrder)
                }
                .padding()
                Divider()
                VStack(spacing:0){
                    Group{
                        Text("Height")
                            .font(.title2)
                            .bold()
                        Slider(value: $height,
                               in: 0.2...10,
                               label: {Text("radius")},
                               minimumValueLabel: { Text("0.2") },
                               maximumValueLabel: { Text("10") })
                        
                        Text("\(Decimal(height).formatted(.number.precision(.significantDigits(2)))) m")
                            .padding()
                        Text("Width")
                            .font(.title2)
                            .bold()
                        Slider(value: $width,
                               in: 0.2...10,
                               label: {Text("width")},
                               minimumValueLabel: { Text("0.2") },
                               maximumValueLabel: { Text("10") })
                        
                        Text("\(Decimal(width).formatted(.number.precision(.significantDigits(2)))) m")
                            .padding()
                        Text("Lenght")
                            .font(.title2)
                            .bold()
                        Slider(value: $lenght,
                               in: 0.2...10,
                               label: {Text("lenght")},
                               minimumValueLabel: { Text("0.2") },
                               maximumValueLabel: { Text("10") })
                        
                        Text("\(Decimal(lenght).formatted(.number.precision(.significantDigits(2)))) m")
                            .padding()
                    }
                    Text("$/m³ = 7.32 ")
                }
                
                Text("m³ = \(Decimal(m3).formatted(.number.precision(.significantDigits(2))))")
                Divider()
                Group {
                    
                    HStack {
                        Text("Type of ground")
                            .font(.headline.smallCaps())
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Picker("Type of ground",
                           selection: $defaultGroundType) {
                        ForEach(typeground, id: \.self) { currentPercentage in
                            Text("\(currentPercentage)")
                                .tag(currentPercentage)
                        }
                    }
                           .pickerStyle(.segmented)
                           .padding()
                    HStack{
                        Text("      0,23$/m³")
                        Spacer()
                        Text("0,43$/m³      ")
                        
                    }
                    .padding()
                }
                Divider()
                Group {
                    
                    HStack {
                        Text("Percentage of the ground")
                            .font(.headline.smallCaps())
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Picker("Percentage of ground",
                           selection: $selectedGroundPercentage) {
                        ForEach(groundPercentages, id: \.self) { currentPercentage in
                            Text("\(currentPercentage)%")
                                .tag(currentPercentage)
                        }
                    }
                           .pickerStyle(.segmented)
                           .padding()
                    
                }
                
                Text("Cost of design:\(Decimal(priceAll).formatted(.number.precision(.significantDigits(3)))) $")
                
               Button(action: {
                    let wid = width
                    let len = lenght
                    let hei = height
                    let name = nameOrder
                    let price = priceAll
                    let lastResult = Result(widthvalue: wid, heightvalue: hei, lenghtvalue: len, pricevalue: price, nameOfTheOrder: name)
                    somePriorResult.append(lastResult)
                }, label: {
                    Text("Order")
                        .font(.headline.smallCaps())
                })
                .buttonStyle(.bordered)
                .padding()
                
            }
            .padding(.top, 10)
           
            
            
        }
    }
}

struct CreateTank_Previews: PreviewProvider {
    static var previews: some View {
        CreateTank()
    }
}

