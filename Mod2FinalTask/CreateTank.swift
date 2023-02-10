//
//  CreateTank.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

struct CreateTank: View {
    
    @State var defaultGroundPercentage = 25
    let groundPercentages = [10, 15, 20, 0]
    @State var priorResults: [Result] = []
    @State var lenght: Double = 0.1
    @State var height: Double = 0.1
    @State var width: Double = 0.1
    @State var nameOfTheOrder: String = "Pez"
 
    var tipPercentage: Double {
        return lenght*height*width
    }
  
    
    
    var body: some View {
        VStack{
            
            VStack(spacing:0){
                
                Text("Height")
                    .font(.title2)
                    .bold()
                Slider(value: $height,
                       in: 0.1...10,
                       label: {Text("radius")},
                       minimumValueLabel: { Text("0.1") },
                       maximumValueLabel: { Text("10") })
                
                Text("\(Decimal(height).formatted(.number.precision(.significantDigits(3))))")
                    .padding()
                Text("Width")
                    .font(.title2)
                    .bold()
                Slider(value: $width,
                       in: 0.1...10,
                       label: {Text("width")},
                       minimumValueLabel: { Text("0.1") },
                       maximumValueLabel: { Text("10") })
                
                Text("\(Decimal(width).formatted(.number.precision(.significantDigits(3))))")
                    .padding()
                Text("Lenght")
                    .font(.title2)
                    .bold()
                Slider(value: $lenght,
                       in: 0.1...10,
                       label: {Text("lenght")},
                       minimumValueLabel: { Text("0.1") },
                       maximumValueLabel: { Text("10") })
                
                Text("\(Decimal(lenght).formatted(.number.precision(.significantDigits(3))))")
                    .padding()
                
                
            }
            Text("m3 = \(tipPercentage)")
            Group {
                
                HStack {
                    Text("Percentage of the ground")
                        .font(.headline.smallCaps())
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Picker("Percentage of ground",
                       selection: $defaultGroundPercentage) {
                    ForEach(groundPercentages, id: \.self) { currentPercentage in
                        Text("\(currentPercentage)%")
                            .tag(currentPercentage)
                    }
                }
                       .pickerStyle(.segmented)
                       .padding()
                
            }
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
        .navigationTitle("CREATE YUOR TANK")
    }
}



struct CreateTank_Previews: PreviewProvider {
    static var previews: some View {
        CreateTank()
    }
}
