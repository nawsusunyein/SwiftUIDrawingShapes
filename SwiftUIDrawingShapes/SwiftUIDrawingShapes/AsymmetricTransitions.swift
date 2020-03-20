//
//  AsymmetricTransitions.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AsymmetricTransitions: View {
    
    @State private var isShowingTransition = false
    
    var body: some View {
        VStack{
            Button(action:{
                self.isShowingTransition.toggle()
            }){Text("Tap to see transition")}
            
            if(self.isShowingTransition){
                Text("Details go here")
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct AsymmetricTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricTransitions()
    }
}
