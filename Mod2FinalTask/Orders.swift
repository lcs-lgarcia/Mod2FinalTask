//
//  Orders.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 9/2/23.
//

import SwiftUI

struct Orders: View {
    
    @State var priorResults: [Result] = []
    
    var body: some View {
        VStack{
                Spacer()
                Text ("YOUR ORDERS")
                    .font(.title)
                    .fontWeight(.bold)
                
            
            List(priorResults.reversed()) { currentResult in
                HStack{
                    Spacer()
                    OrderView(somePriorResult: currentResult)
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
