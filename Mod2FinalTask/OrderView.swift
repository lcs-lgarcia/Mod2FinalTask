//
//  OrderView.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 11/2/23.
//

import SwiftUI

struct OrderView: View {
    
    let priorResult: Result
    
    var body: some View {
        
        VStack{
            Text("\(priorResult.nameOfTheOrder)")
            Divider()
            HStack{
                Text("Length")
                Text("\(priorResult.lenght)")
            }
            HStack{
                Text("Width")
                Text("\(priorResult.width)")
            }
            HStack{
                Text("Hight")
                Text("\(priorResult.height)")
            }
            HStack{
                Text("Total price")
                Text("\(priorResult.price)")
            }
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(priorResult: resultForPreviews)
    }
}
