//
//  ContentView.swift
//  temperature
//
//  Created by Brian Malagoli on 20/03/2020.
//  Copyright © 2020 Brian Malagoli. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    //variable température qui va être modifiée et sa valeur sera affichée
    @State private var temperature: Double = 0.0
    //variable de couleur qui sera modifiée en 4 états
    private var changeBckGrColor: Color {
        switch temperature {
            case ..<15:
                return Color.blue
            case 15...25:
                return Color.yellow
            case 25...35:
                return Color.orange
            default:
                return Color.red
        }
    }
    
    var body: some View {
        ZStack {
            changeBckGrColor.edgesIgnoringSafeArea(.all)
            VStack {
                
                //inférieur à 15°, on affiche l'entier de la variable température
                if temperature < 15 {
                    Text("Il fait froid")
                    Text("\(Int(temperature)) °")
                //inférieur à 25°, on affiche l'entier de la variable température
                } else if temperature < 25 {
                    Text("Tempéré")
                    Text("\(Int(temperature)) °")
                //inférieur à 35°, on affiche l'entier de la variable température
                } else if temperature < 35 {
                    Text("Il fait chaud")
                    Text("\(Int(temperature)) °")
                //supérieur à 35°, on affiche l'entier de la variable température
                } else {
                    Text("Il fait très chaud")
                    Text("\(Int(temperature)) °")
                }
                
                HStack {
                    Slider(value: $temperature, in: -10...50, step: 1.0)
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
