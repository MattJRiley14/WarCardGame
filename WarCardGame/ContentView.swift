//
//  ContentView.swift
//  WarCardGame
//
//  Created by Matthew RIley on 2/17/23.
//

import SwiftUI

struct ContentView: View {

    // State values/variables
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    
    var body: some View {
        ZStack {
            Image("background")
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    // Displays a card image based on the current value of the playerCard state variable
                    Image(playerCard)
                    Spacer()
                    // Displays a card image based on the current value of the cpuCard state variable
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    print("Button clicked!")
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        // Styling can added to elements/views by using the right panel
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
