//
//  GameViewController.swift
//  ColorSwitcher
//
//  Created by Eldar Vershinin on 20/12/2020.
//  Copyright © 2020. All rights reserved.
//


import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1.0)
        self.addLogo()
        self.addLabels()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view?.presentScene(gameScene)
    }
    
    private func addLogo() {
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: frame.width/4, height: frame.width/4)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        self.addChild(logo)
    }
    
    private var highScore: String {
        get {
            let _highScore = UserDefaults.standard.integer(forKey: "HighScore")
            return _highScore > 0 ? "\(_highScore)" : "--"
        }
    }
    
    private func addLabels() {
        let playLabel = SKLabelNode(text: "Tap To Play")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50.0
        playLabel.fontColor = UIColor.black
        playLabel.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        self.addChild(playLabel)
        self.animate(label: playLabel)
        
        let highScoreLabel = SKLabelNode(text: "HighScore: \(self.highScore)")
        highScoreLabel.fontName = "AvenirNext-Bold"
        highScoreLabel.fontSize = 40.0
        highScoreLabel.fontColor = UIColor.black
        highScoreLabel.position = CGPoint(x: self.frame.midX, y: self.frame.midY - highScoreLabel.frame.size.height*4)
        self.addChild(highScoreLabel)
        
        let lastScoreLabel = SKLabelNode(text: "Last Score: \(UserDefaults.standard.integer(forKey: "LastScore"))")
        lastScoreLabel.fontName = "AvenirNext-Bold"
        lastScoreLabel.fontSize = 40.0
        lastScoreLabel.fontColor = UIColor.black
        lastScoreLabel.position = CGPoint(x: self.frame.midX, y: highScoreLabel.position.y - lastScoreLabel.frame.size.height*2)
        self.addChild(lastScoreLabel)
    }
    
    private func animate(label: SKLabelNode) {
        let scaleUp = SKAction.scale(to: 1.1, duration: 0.5)
        let scaleDown = SKAction.scale(to: 1.0, duration: 0.5)
        let sequence = SKAction.sequence([scaleUp, scaleDown])
        
        label.run(SKAction.repeatForever(sequence))
    }
}
