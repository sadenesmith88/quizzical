//
//  ButtonTextView.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

struct ButtonTextView: View {
    let str: String
    var body: some View {
            HStack {
                Spacer()
                Text(str)
                    .font(.title)
                    .foregroundColor(GameColor.mainColor)
                    .frame(width: 200, height: 75)
                    .background(.white)
                    .cornerRadius(12)
                    .bold()
                    .padding()
                    
                Spacer()
            }.background(GameColor.mainColor)
        }
    }
    
struct NextButtonTextView: View {
    let strin: String
    var body: some View {
        HStack {
            Spacer()
            Text(strin)
                .font(.body)
                .foregroundColor(GameColor.mainColor)
                .frame(width: 350, height: 45)
                .background(GameColor.accentColor)
                .bold()
                .padding()
                
            Spacer()
        }.background(GameColor.mainColor)
    }
}
struct ButtonTextView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTextView(str: "Test")
        NextButtonTextView(strin: "Next")
    }
}
