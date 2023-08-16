//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Ihor Orlenko on 13.08.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
