//
//  MultipleAnimInView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct MultipleAnimInView: View {
    @State var isEnabled = false
    
    var body: some View {
        Button("Tap Here"){
            self.isEnabled.toggle()
        }
        .foregroundColor(Color.white)
        .frame(width:200,height:200)
        .background(isEnabled ? Color.green : Color.red)
        .animation(nil)
        .clipShape(RoundedRectangle(cornerRadius: isEnabled ? 100 : 0))
        .animation(.default)
    }
}

struct MultipleAnimInView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAnimInView()
    }
}
