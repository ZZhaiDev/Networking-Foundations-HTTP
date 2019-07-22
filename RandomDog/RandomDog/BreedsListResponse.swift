//
//  AppDelegate.swift
//  RandomDog
//
//  Created by zijia on 7/22/19.
//  Copyright © 2019 zijia. All rights reserved.
//

import Foundation

struct BreedsListResponse: Codable {
    let status: String
    let message: [String: [String]]
}
