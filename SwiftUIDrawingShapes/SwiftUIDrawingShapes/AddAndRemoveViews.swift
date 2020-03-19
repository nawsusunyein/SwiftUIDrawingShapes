//
//  AddAndRemoveViews.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AddAndRemoveViews: View {
    
    @State private var showDetails = false
    
    var body: some View {
        VStack{
            Button(action:{
                withAnimation{
                    self.showDetails.toggle()
                }
            }){
                Text("Tap to show details")
            }
            
            if(showDetails){
                Text("Details go here")
                    .transition(.scale)
            }
        }
    }
}

struct AddAndRemoveViews_Previews: PreviewProvider {
    static var previews: some View {
        AddAndRemoveViews()
    }
}
