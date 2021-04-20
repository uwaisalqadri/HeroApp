//
//  HeroView.swift
//  HeroApp
//
//  Created by Uwais Alqadri on 20/04/21.
//

import SwiftUI

struct HeroView: View {
    
    let data = HeroData()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data.heroes) { hero in
                    NavigationLink(destination: DetailView(hero: hero)) {
                        HeroRow(hero: hero)
                    }.buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Hero List")
            .navigationBarItems(trailing: NavigationLink(destination: ProfileView()) {
                Image(systemName: "person.circle.fill")
            }.buttonStyle(PlainButtonStyle()))
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}
