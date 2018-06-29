//
//  GameViewController.swift
//  MarbleMaze
//
//  Created by Larry Petroski on 6/28/18.
//  Copyright © 2018 Larry Petroski. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {

    var scnView:SCNView!
    var scnScene:SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupScene()
        setupNodes()
        setupSounds()
    }
    
    func setupScene() {
        scnView = self.view as! SCNView
        scnView.delegate = self
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        
        scnScene = SCNScene(named: "art.scnassets/game.scn")
        scnView.scene = scnScene
    }
    
    func setupNodes() {
    }
    
    func setupSounds() {
    }
    
    override var shouldAutorotate: Bool {return false}
    override var prefersStatusBarHidden: Bool {return true}
}

extension GameViewController:SCNSceneRendererDelegate {
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
    }
}
