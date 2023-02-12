//
//  Orders.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

struct Orders: View {
    
    @State var history: [Result] = []
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text ("YOUR ORDERS")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            List(history.reversed()) { currentResult in
                HStack{
                    Spacer()
                    OrderView(priorResult: currentResult)
                    Spacer()
                }
            }
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
