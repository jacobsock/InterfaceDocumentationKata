//
//  ContentView.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var docHeros = DocumentationHero.docHeros
    
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
