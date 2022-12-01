//
//  protocols.swift
//  Game homework 3 @vlad_andrushok
//
//  Created by Андрушок on 24.11.2022.
//

import Foundation

protocol Buying {
    func buy()
}

protocol Selling {
    func sell()
}

protocol Stealing {
    mutating func productSteal(_ productThatStole: String?) -> String?
}

protocol FindThief {
    func search(_ thief: Thief)
}
