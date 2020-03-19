//
//  DrawingCustomPathRows.swift
//  SwiftUIDrawingShapes
//
//  Created by techfun on 2020/03/19.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DrawingCustomPathRows: View {
    var body: some View {
        SpiroSquare()
            .stroke()
            .frame(width:100,height:100)
    }
}

struct DrawingCustomPathRows_Previews: PreviewProvider {
    static var previews: some View {
        DrawingCustomPathRows()
    }
}
