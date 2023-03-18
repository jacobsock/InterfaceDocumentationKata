//
//  Animal.swift
//  InterfaceDocumentationKata
//
//  Created by Zoe Cutler on 2/15/23.
//

import SwiftUI

/// DocumentationHero is a struct that stores information about one hero. This is our data model.
struct DocumentationHero: Identifiable {
    let id = UUID()
    var name: String
    var catchphrase: String
    var about: String
    var imageName: String
    
    /// Swift lets you create properties and methods that belong to a type, rather than to instances of a type. This is helpful for organizing your data meaningfully by storing shared data.
    /// Swift calls these shared properties “static properties”, and you create one just by using the static keyword. Once that's done, you access the property by using the full name of the type, in this case `DocumentationHero.docHeros`.
    static let docHeros: [DocumentationHero] = [
        
        DocumentationHero(name: "Apple Developer Documentation", catchphrase: "Developer? I 'ardly-", about: "The Apple Developer Documentation is a great place to learn about everything in the Apple Ecosystem.\n\nIn this project, you'll be using the SwiftUI section to learn about all of the components you'll need to build this little app. The catch: NO GOOGLING. The documentation will be your guide.", imageName: "developer"),
        
        
        DocumentationHero(name: "Clippy", catchphrase: "Would you like help?", about: "The Office Assistant is a discontinued intelligent user interface for Microsoft Office that assisted users by way of an interactive animated character which interfaced with the Office help content. It was included in Microsoft Office for Windows (versions 97 to 2003), in Microsoft Publisher and Microsoft Project (versions 98 to 2003), Microsoft FrontPage (versions 2002 and 2003), and Microsoft Office for Mac (versions 98 to 2004).\n\nThe default assistant in the English version was named Clippit (commonly nicknamed Clippy), after a paperclip. The character was designed by Kevan J. Atteberry. Clippit was the default and by far the most notable Assistant (partly because in many cases the setup CD was required to install the other assistants), which also led to it being called simply the Microsoft Paperclip. The original Clippit from Office 97 was given a new look in Office 2000.", imageName: "clippy"),
        
        
        DocumentationHero(name: "Ask.com", catchphrase: "Ask Jeeves", about: "Ask.com (originally known as Ask Jeeves) is a question answering–focused e-business founded in 1996 by Garrett Gruener and David Warthen in Berkeley, California.\n\nThe original software was implemented by Gary Chevsky, from his own design. Warthen, Chevsky, Justin Grant, and others built the early AskJeeves.com website around that core engine. In 2006, the \"Jeeves\" name was dropped and they refocused on the search engine, which had its own algorithm. In late 2010, facing insurmountable competition from more popular search engines like Google, the company outsourced its web search technology and returned to its roots as a question and answer site. Douglas Leeds was elevated from president to CEO in 2010.", imageName: "jeeves"),
        
        
        
        DocumentationHero(name: "Wikipedia", catchphrase: "The Free Encyclopedia", about: "Wikipedia is a multilingual free online encyclopedia written and maintained by a community of volunteers, known as Wikipedians, through open collaboration and using a wiki-based editing system. Wikipedia is the largest and most-read reference work in history. It is consistently one of the 10 most popular websites ranked by Similarweb and formerly Alexa; as of 2022, Wikipedia was ranked the 5th most popular site in the world. It is hosted by the Wikimedia Foundation, an American non-profit organization funded mainly through donations.", imageName: "wikipedia"),
        
        
        DocumentationHero(name: "Alex Trebek", catchphrase: "This is Jeopardy!", about: "George Alexander Trebek OC (/trəˈbɛk/; July 22, 1940 – November 8, 2020) was a Canadian-American game show host and television personality. He is best known for hosting the syndicated general knowledge quiz game show Jeopardy! for 37 seasons from its revival in 1984 until his death in 2020. Trebek also hosted a number of other game shows, including The Wizard of Odds, Double Dare, High Rollers, Battlestars, Classic Concentration, and To Tell the Truth. He also made appearances, usually as himself, in numerous films and television series.", imageName: "trebek")
        
        
        
    ]
}
