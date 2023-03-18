//
//  HeroDetailView.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//  Edited by Jacob Sock 3/17/23.
//

import SwiftUI

/// We present this HeroDetailView from our ContentView when the user taps on a row of our hero list.
struct HeroDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var hero: DocumentationHero
    
    var body: some View {
        List {
            Image(hero.imageName).resizable().clipShape(Circle()).scaledToFit()
            Text(hero.name).font(.largeTitle).fontWeight(.bold)
            Text(hero.about)
        }
    }
}

/// In order to preview our HeroDetailView, we have to give it a sample DocumentationHero to display, so we'll use the first element of our docHeros static property.
struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: DocumentationHero.docHeros.first!)
    }
}
