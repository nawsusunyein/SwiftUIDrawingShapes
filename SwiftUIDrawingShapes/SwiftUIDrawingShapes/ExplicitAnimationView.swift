//
//  ExplicitAnimationView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ExplicitAnimationView: View {
    
    @State var opacity = 1.0
    var body: some View {
        VStack{
            Button(action:{
                withAnimation{
                    self.opacity -= 0.2
                }
            }){
                Text("Tap here")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .opacity(self.opacity)
            }
        }
    }
}

struct ExplicitAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimationView()
    }
}
