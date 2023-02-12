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
            HStack{
                Spacer()
                Text ("YOUR ORDERS")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            List(priorResults.reversed()) { currentResult in
                
            }
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
