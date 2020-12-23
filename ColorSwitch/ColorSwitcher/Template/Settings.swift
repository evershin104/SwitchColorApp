//
//  GameViewController.swift
//  ColorSwitcher
//
//  Created by Eldar Vershinin on 20/12/2020.
//  Copyright © 2020. All rights reserved.
//


import SpriteKit

// Физика в игре
struct PhysicsCategories {
    static let none: UInt32 = 0 // No physics
    static let ballCategory: UInt32 = 0x1 // 01
    static let colorCircleCategory: UInt32 = 0x1 << 1 // 10
}
// Позиции объектов
struct ZPositions {
    static let label: CGFloat = 0
    static let ball: CGFloat = 1
    static let colorCircle: CGFloat = 2
}
