//
//  OrderView.swift
//  Mod2FinalTask
//
//  Created by Lucas García on 11/2/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        
        VStack{
            Text("")
            Divider()
            HStack{
                Text("Length")
                Text("")
        }
            HStack{
                Text("Width")
                Text("")
        }
            HStack{
                Text("Hight")
                Text("")
        }
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
