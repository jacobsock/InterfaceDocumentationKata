//
//  HeroDetailView.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//

import SwiftUI

struct HeroDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var hero: DocumentationHero
    
    var body: some View {
        ScrollView {
            Text("Hero detail.")
        }
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: DocumentationHero.docHeros.first!)
    }
}
