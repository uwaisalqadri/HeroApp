//
//  DetailView.swift
//  HeroApp
//
//  Created by Uwais Alqadri on 20/04/21.
//

import SwiftUI

struct DetailView: View {
    
    var hero: Hero
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Image(hero.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 184, height: 184, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text(hero.name)
                    .font(.title2)
                    .bold()
                
                Text(hero.description)
                    .font(.subheadline)
                    .padding(.top, 5)
                    .padding(.bottom, 15)
                    
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(hero: Hero(
                    name: "Ki Hajar Dewantara (Ki Hadjar Dewantara)",
                    description: "aku suka susunya hingga tetes terakhir, aku suka coklatnya, aku suka susunya hingga tetes terakhir, aku suka coklatnya, aku suka susunya hingga tetes terakhir, aku suka coklatnya",
                    image: "null"))
    }
}
