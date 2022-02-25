//
//  Fruits.swift
//  ShoutaKadai13
//
//  Created by 中野翔太 on 2022/02/24.
//

import Foundation
protocol FruitsDelegate {
    var fruitName: String {get}
    var imageViewString: String {get}
}

struct FruitsItems {
    private (set) var fruitName: String
    private (set) var imageViewString: String
    init(fruitName: String, imageViewString: String) {
        self.fruitName = fruitName
        self.imageViewString = imageViewString
    }
}
