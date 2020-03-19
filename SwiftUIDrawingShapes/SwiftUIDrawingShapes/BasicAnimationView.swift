//
//  BasicAnimationView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct BasicAnimationView: View {
    
    @State private var scale : CGFloat = 1
    @State private var scale1 : CGFloat = 1
    @State private var angle : Double = 1
    @State private var borderThickness : CGFloat = 1.0
    @State private var springAngle : Double = 1
    @State private var interpolatedAngle : Double = 1
    
    var body: some View {
        VStack{
            Button(action:{
                self.scale += 1
            }){
                Text("Tap here")
                    .scaleEffect(scale)
                    .animation(.linear)
            }
            
            Button(action:{
                self.scale1 += 1
            }){
                Text("Tap here1")
                .scaleEffect(scale1)
                .animation(.easeIn)
            }
            
            Button(action:{
                self.angle += 45
                self.borderThickness += 1
            }){
                Text("Tap here 2")
                    .padding()
                    .border(Color.red,width:borderThickness)
                    .rotationEffect(.degrees(angle))
                    .animation(.easeIn)
            }
            Spacer()
            Button(action:{
                self.springAngle += 45
            }){
                Text("Spring Animation")
                    .padding()
                    .border(Color.red,width: borderThickness)
                    .rotationEffect(.degrees(springAngle))
                    .animation(.spring())
            }
            Spacer()
            Button(action:{
                self.interpolatedAngle += 45
            }){
                Text("Interpolation string")
                    .padding()
                    .rotationEffect(.degrees(interpolatedAngle))
                    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 5))
            }
            Spacer()
        }
        
        
    }
}

struct BasicAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        BasicAnimationView()
    }
}
