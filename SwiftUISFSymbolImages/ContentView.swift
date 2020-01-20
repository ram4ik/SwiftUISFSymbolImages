//
//  ContentView.swift
//  SwiftUISFSymbolImages
//
//  Created by ramil on 20.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var modify: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                self.modify ? Color.orange : Color.red,
                self.modify ? Color.yellow : Color.orange
            ]), startPoint:
                self.modify ? .bottomLeading : .bottomTrailing,
                endPoint:
                self.modify ? .topTrailing : .topLeading)
                .edgesIgnoringSafeArea(.all)
                
            Image(systemName: self.modify ? "cloud.rain.fill" : "sun.max.fill")
                .font(.system(size: 100))
                .foregroundColor(self.modify ? .blue : .red)
                .shadow(color: self.modify ? .blue : .red, radius: 5, x: 5, y: 10)
                .padding(100)
                .background(
                    Circle()
                        .foregroundColor(.orange)
                        .opacity(0.7))
                .rotationEffect(.degrees(self.modify ? 360 : 0))
        }.animation(.default)
        .onTapGesture {
            self.modify.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
