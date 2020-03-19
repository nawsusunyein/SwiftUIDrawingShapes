//
//  ContentView.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let componentsList = ["Default Shapes"]
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination:DefaultShapes()){
                    Text(componentsList[0])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
