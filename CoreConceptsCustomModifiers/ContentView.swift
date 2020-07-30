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
            .fill(gradient)
            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .shadow(5)
            .frame(100)
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
