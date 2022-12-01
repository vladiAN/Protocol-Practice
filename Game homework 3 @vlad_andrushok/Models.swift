//
//  models.swift
//  Game homework 3 @vlad_andrushok
//
//  Created by Андрушок on 24.11.2022.
//

import Foundation

struct Seller: Selling {
    var productSell: String
    func sell() {
        print("I sell \(productSell)")
    }
}

struct Buyer: Buying {
    var productBuy: String
    func buy() {
        print("I buy \(productBuy)")
    }
}

struct Thief: Stealing {
    var product: String?
    mutating func productSteal(_ productThatStole: String?) -> String? {
        
        if let productThatStole = productThatStole {
            print("steal \(productThatStole)")
    } else {
        print("did not steal")
    }
        product = productThatStole
        return productThatStole
    }
}

struct SecurityGuard: FindThief {
    func search(_ thief: Thief) {
        thief.product != nil ? print("thief caught") : print("Thief hasn’t stolen anything yet")
    }
}

var seller = Seller(productSell: "Headphones")
var buyer = Buyer(productBuy: seller.productSell)
var thief = Thief()
var securityGuard = SecurityGuard()

var theft = thief.productSteal(seller.productSell)
var searching: () = securityGuard.search(thief)
