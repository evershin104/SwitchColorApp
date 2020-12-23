//
//  GameViewController.swift
//  ColorSwitcher
//
//  Created by Eldar Vershinin on 20/12/2020.
//  Copyright © 2020. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Проверка на нормальный запуск игры
        if let view = self.view as! SKView? {
            let scene = MenuScene(size: view.bounds.size)
                
            // Заполнение экрана
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view.presentScene(scene)
            // Индикационные параметры
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }
}
