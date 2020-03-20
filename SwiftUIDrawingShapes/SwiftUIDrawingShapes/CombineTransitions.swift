//
//  CombineTransitions.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct CombineTransitions: View {
    @State private var isEnabledToggle = false
    var body: some View {
        VStack{
            Toggle(isOn:$isEnabledToggle){
                Text("Enable to see transition")
            }
            
            if(isEnabledToggle){
                Text("Details go here")
                    .transition(.moveAndScale)
            }
        }
        
    }
}

struct CombineTransitions_Previews: PreviewProvider {
    static var previews: some View {
        CombineTransitions()
    }
}

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
}
