//
//  ContentView.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//

import SwiftUI

/// Our ContentView will list all of our documentation heros. When we tap on one of the heros in our list, we'll present a sheet with `HeroDetailView` to view details about our chosen hero.
struct ContentView: View {
    /// Here, we access the static property `docHeros` from the DocumentationHero type. Check out that file to read more about static properties.
    @State private var docHeros = DocumentationHero.docHeros
    
    /// This property will be nil if we are not viewing our `HeroDetailView` sheet. If we give it a hero as a value, the sheet will be presented.
    @State private var heroShowing: DocumentationHero?
    
    var body: some View {
        Text("List of Documentation Heros")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
