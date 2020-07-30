//
//  ContentView.swift
//  CoreConceptsCustomModifiers
//
//  Created by ramil on 30.07.2020.
//

import SwiftUI
import PureSwiftUI

private let gradient = LinearGradient([Color.purple, Color.pink], to: .trailing)

struct CustomCircleModifier: View {
    var body: some View {
        Circle()
            //.fill(gradient)
            //.overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .strokeWithFill(Color.blue, fill: gradient)
            //.shadow(5)
            //.frame(100)
            .defaultSizeAndShadow()
    }
}

private extension View {
    func defaultSizeAndShadow() -> some View {
        shadow(5)
            .frame(100)
    }
}

private extension Shape {
    func strokeWithFill<SS: ShapeStyle, FS: ShapeStyle>(_ strokeContents: SS, lineWidth: CGFloat = 2, fill: FS) -> some View {
        self.fill(gradient)
            .overlay(self.stroke(strokeContents, lineWidth: lineWidth))
    }
}

struct ContentView: View {
    var body: some View {
        CustomCircleModifier()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
