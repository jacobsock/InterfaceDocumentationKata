//
//  ContentView.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//  Edited by Jacob Sock 3/17/23.
//

import SwiftUI

/// Our ContentView will list all of our documentation heros. When we tap on one of the heros in our list, we'll present a sheet with `HeroDetailView` to view details about our chosen hero.
struct ContentView: View {
    /// Here, we access the static property `docHeros` from the DocumentationHero type. Check out that file to read more about static properties.
    @State private var docHeros = DocumentationHero.docHeros
    
    /// This property will be nil if we are not viewing our `HeroDetailView` sheet. If we give it a hero as a value, the sheet will be presented.
    @State private var heroShowing: DocumentationHero?
    
    var body: some View {
        //Geometry reader is leverage to make more acccurate sizing for our images
         NavigationView{
        GeometryReader{
            geometry in
                List {
                    //Each DocumentationHero type is iterated over
                    ForEach(docHeros) { hero in
                        HStack {
                            Image(hero.imageName)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                            VStack(alignment:.leading){
                                Text(hero.name).fontWeight(.bold)
                                Text(hero.catchphrase).fontWeight(.light)
                            }
                            Spacer()
                            Button {
                                heroShowing = hero
                            } label: {
                                Image(systemName: "questionmark.circle").font(.title).foregroundColor(.blue)
                                    .sheet(item: $heroShowing) { hero  in
                                        HeroDetailView(hero: hero).onTapGesture {
                                            heroShowing = nil
                                        }
                                    }
                            }
                        }
                        .listRowBackground(Color.white) // white is default
                        .cornerRadius(0.5)
                    }
                }
                .navigationTitle("Documentation Heros")
                .scrollContentBackground(.hidden)
                .padding(.horizontal, 20)
        }
        .background(.gray)
         }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



