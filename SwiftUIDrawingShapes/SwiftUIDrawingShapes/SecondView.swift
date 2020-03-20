//
//  SecondView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/20.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    let componentsList = ["Combine Transitions","Asymmetric Transitions","Custom Transitions"]
    var body: some View {
        List{
            NavigationLink(destination:CombineTransitions()){
                Text(componentsList[0])
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            NavigationLink(destination:AsymmetricTransitions()){
                Text(componentsList[1])
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            NavigationLink(destination:CustomTransitionView()){
                Text(componentsList[2])
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
