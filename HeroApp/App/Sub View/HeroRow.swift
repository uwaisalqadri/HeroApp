//
//  HeroRow.swift
//  HeroApp
//
//  Created by Uwais Alqadri on 20/04/21.
//

import SwiftUI

struct HeroRow: View {
    
    let hero: Hero
    
    var body: some View {
        HStack {
            Image(hero.image)
                .resizable()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading) {
                Text(hero.name)
                    .foregroundColor(.black)
                    .bold()
                    .lineLimit(1)
                
                Text(hero.description)
                    .padding(4)
                    .foregroundColor(.black)
                    .lineLimit(3)
                    .font(.caption)
            }
            
            Spacer()
            
        }.padding()
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroRow(hero: Hero(
                    name: "Uwais",
                    description: "Uwais adalah anak gembala yang selalu riang serta gembira",
                    image: "null")
        ).previewLayout(.sizeThatFits)
    }
}
