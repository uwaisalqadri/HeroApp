//
//  Hero.swift
//  HeroApp
//
//  Created by Uwais Alqadri on 20/04/21.
//

import Foundation

struct Hero: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let image: String
}
