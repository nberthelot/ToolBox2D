//
//  TextureManager.swift
//  POCGame
//
//  Created by Nicolas Berthelot on 25/07/2018.
//  Copyright © 2018 blackpills. All rights reserved.
//

import Foundation
import SpriteKit

class TextureManager {
  
  private var atlases = [String: SKTextureAtlas]()
  
  private static let sharedInstance = TextureManager()
  
  static func load(atlasNames: [String], preload: Bool = false, completion: (() -> ())? = nil) {
    if preload == false {
      atlasNames.forEach { load(atlasName: $0) }
      completion?()
    }
    else {
      SKTextureAtlas.preloadTextureAtlasesNamed(atlasNames) { (error, atlases) in
        for (index, name) in atlasNames.enumerated() {
          if index < atlases.count {
            sharedInstance.atlases[name] = atlases[index]
          }
        }
        completion?()
      }
    }
  }
  
  @discardableResult
  static func load(atlasName: String) -> SKTextureAtlas {
    if let atlas = sharedInstance.atlases[atlasName] {
      return atlas
    }
    let atlas = SKTextureAtlas(named: atlasName)
    sharedInstance.atlases[atlasName] = atlas
    return atlas
  }
  
  static func textures(withPrefix: String, from atlasName: String) -> [SKTexture] {
    let atlas = load(atlasName: atlasName)
    return atlas.textureNames.filter {
      $0.hasPrefix(withPrefix)
      }.sorted().compactMap {
        atlas.textureNamed($0)
    }
  }

  static func textures(fromDetails sprite: TextureDetails.Sprite) -> [SKTexture] {
    return textures(withPrefix: sprite.rawValue, from: sprite.atlas.rawValue)
  }
  
  static func remove(atlasName: String) {
    sharedInstance.atlases.removeValue(forKey: atlasName)
  }
  
}
