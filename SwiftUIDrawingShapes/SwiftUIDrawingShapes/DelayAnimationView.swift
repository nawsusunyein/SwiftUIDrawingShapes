//
//  DelayAnimationView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DelayAnimationView: View {
    @State private var rotateValue = 0.0
    var body: some View {
        Rectangle()
            .fill(Color.green)
            .frame(width:100,height:100)
            .rotationEffect(.degrees(rotateValue))
            .animation(Animation.easeInOut(duration: 3).delay(1))
            .onTapGesture {
                self.rotateValue += 360
        }
    }
}

struct DelayAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        DelayAnimationView()
    }
}
