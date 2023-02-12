//
//  OrderView.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 11/2/23.
//

import SwiftUI

struct OrderView: View {
    
    let somePriorResult: Result
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 3){
            
            Text("\(somePriorResult.nameOfTheOrder)")
            Divider()
            HStack{
                Text("Length")
                Text("\(somePriorResult.lenghtvalue)")
            }
            HStack{
                Text("Width")
                Text("\(somePriorResult.widthvalue)")
            }
            HStack{
                Text("Hight")
                Text("\(somePriorResult.heightvalue)")
            }
            HStack{
                Text("Total price")
                Text("\(somePriorResult.pricevalue)")
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(somePriorResult: exampleResultForPreviews)
    }
}
