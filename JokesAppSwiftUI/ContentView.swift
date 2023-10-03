//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Onur Bulut on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    
    
    var body: some View {
     
        NavigationView{
            List(jokesVM.jokes) { element in
                Text(element.value ?? "There no joke here")
            }
            .toolbar{
                Button(action:addJoke, label: {
                    Text("Get New Joke")
                })
            }
            .navigationBarTitle(Text("Jokes App"))
            
            
        }
    }
    
    func addJoke (){
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
