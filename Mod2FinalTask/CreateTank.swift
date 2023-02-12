//
//  CreateTank.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

struct CreateTank: View {
    
    @State var selectedGroundPercentage = 10
    let groundPercentages = [10, 15, 20, 0]
    @State var defaultGroundType = "SAND"
    let typeground = ["SAND", "ROCK", "MIX"]
    @State var priorResults: [Result] = []
    @State var lenght: Double = 0.2
    @State var height: Double = 0.2
    @State var width: Double = 0.2
    @State var nameOfTheOrder: String = "Pez"
 
    

    var m3: Double {
        return lenght*height*width
    }
    var priceTank: Double {
        return m3*7.23
    }
    var groundPercentage: Double {
        return Double(selectedGroundPercentage) / 100
    }
    var priceAll: Double {
        return priceTank+groundPercentage*m3
    }
    
    
    var body: some View {
        ScrollView {
            VStack{
                Divider()
                VStack(spacing:0){
                    
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
                        Text("    2,22$/m³")
                        Spacer()
                        Text("4,07$/m³")
                        Spacer()
                        Text("3,46$/m³    ")
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
                    let latestResult = Result(weight: 2, height: 2, lenght: 2, order: "seso", nameOfTheOrder: "caca")
                    priorResults.append(latestResult)
                } ,label: {
                    Text ("Order")
                })
                .buttonStyle(.bordered)
                .padding()
            }
            .padding(.top, 10)
            .navigationTitle("CREATE YOUR TANK")
        }
    }
}


struct CreateTank_Previews: PreviewProvider {
    static var previews: some View {
        CreateTank()
    }
}
