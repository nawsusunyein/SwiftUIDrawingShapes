//
//  AnimationImmediately.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AnimationImmediately: View {
    @State private var scale : CGFloat = 1.0
    @State private var scale1 : CGFloat = 1.0
    
    var body: some View {
        VStack{
            Circle()
                .frame(width:50,height:50)
                .scaleEffect(scale)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 2)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                    return withAnimation(repeated) {
                        self.scale = 0.5
                }
            }
            
            Rectangle()
                .frame(width:50,height:50)
                .scaleEffect(scale1)
                .animateForever(autoreverses: true){
                    self.scale1 = 0.5
            }
        }
        
    }
}

struct AnimationImmediately_Previews: PreviewProvider {
    static var previews: some View {
        AnimationImmediately()
    }
}

extension View {
    func animate(using animation: Animation = Animation.easeInOut(duration: 1), _ action: @escaping () -> Void) -> some View {
        return onAppear {
            withAnimation(animation) {
                action()
            }
        }
    }
}

extension View {
    func animateForever(using animation: Animation = Animation.easeInOut(duration: 1), autoreverses: Bool = false, _ action: @escaping () -> Void) -> some View {
        let repeated = animation.repeatForever(autoreverses: autoreverses)

        return onAppear {
            withAnimation(repeated) {
                action()
            }
        }
    }
}
