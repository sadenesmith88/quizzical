//
//  WelcomeView.swift
//  quizzical
//
//  Created by sade on 4/5/24.
//

import SwiftUI

struct WelcomeView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red:48/255, green: 105/255, blue: 240/255)
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack(alignment: .center, content: {
                    
                    Text("Welcome to Quizzical")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 500)
                    Text("Select the correct answers to the following questions.")
                }).foregroundColor(.white)
                Spacer()
                NavigationLink("Let's Play", destination: GameView())
                    .bold()
                    .font(.title)
                    .frame(width: 200, height: 75)
                    .background(.white)
                    .cornerRadius(15)
                    .foregroundColor(mainColor)
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
