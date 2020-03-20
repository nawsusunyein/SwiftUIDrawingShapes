//
//  CustomTransitionView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct CustomTransitionView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.blue)
                .frame(width:200,height:200)
            
            if(isShowingRed){
                Rectangle()
                    .fill(Color.red)
                    .frame(width:200,height: 200)
                    .transition(.iris)
                    .zIndex(1)
            }
        }.navigationBarItems(trailing: Button("Switch"){
            withAnimation(.easeInOut){
                self.isShowingRed.toggle()
            }
        })
    }
}

struct CustomTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitionView()
    }
}
