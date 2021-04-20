//
//  ProfileView.swift
//  HeroApp
//
//  Created by Uwais Alqadri on 20/04/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 184, height: 184, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            VStack(alignment: .center) {
                Text("Uwais Alqadri")
                    .bold()
                    .font(.title)
                
                Text("Aslinya Android Developer")
                    .font(.footnote)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
