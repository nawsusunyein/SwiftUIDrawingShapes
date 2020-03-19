//
//  AnimationInBinding.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AnimationInBinding: View {
    @State var isToggling = false
    
    var body: some View {
        VStack{
            Toggle(isOn:$isToggling.animation(.spring())){
                Text("On toggle to show greeting")
            }
            if(isToggling){
                Text("Hello, nice to meet you")
            }
        }
    }
}

struct AnimationInBinding_Previews: PreviewProvider {
    static var previews: some View {
        AnimationInBinding()
    }
}
