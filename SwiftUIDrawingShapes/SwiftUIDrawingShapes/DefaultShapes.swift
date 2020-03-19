//
//  DefaultShapes.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DefaultShapes: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.red)
                .frame(width:200,height:200)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.green)
                .frame(width:200,height:200)
            Capsule()
                .fill(Color.orange)
                .frame(width:100,height:50)
            Ellipse()
                .fill(Color.blue)
                .frame(width:100,height:50)
            Circle()
                .fill(Color.white)
                .frame(width:100,height:50)
        }
    }
}

struct DefaultShapes_Previews: PreviewProvider {
    static var previews: some View {
        DefaultShapes()
    }
}
