//
//  CustomCircleView.swift
//  DemoHike
//
//  Created by Aguid Ramirez Sanchez on 06/03/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [
                    .customIndigoMedium,
                    .customSalmonLight
                ], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing))
                .onAppear(perform: {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                })
            MotionAnimationView()
        } //: ZTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
