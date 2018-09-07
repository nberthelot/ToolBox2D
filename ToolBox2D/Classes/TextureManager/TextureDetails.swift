//
//  TextureDetails.swift
//  POCGame
//
//  Created by Berthelot Nicolas on 27/07/2018.
//  Copyright © 2018 blackpills. All rights reserved.
//

import Foundation

public struct TextureDetails {
  
}

// MARK: - ATALAS
public extension TextureDetails {
  
  struct Atlas: Hashable, Equatable, RawRepresentable {
    
    public var rawValue: String
    public var timePerFrame: TimeInterval
    
    public init?(rawValue: String) {
      self.rawValue = rawValue
      self.timePerFrame = 0
    }
    
    public init(_ rawValue: String, timePerFrame: TimeInterval = 0) {
      self.rawValue = rawValue
      self.timePerFrame = timePerFrame
    }
    
  }
  
}

// MARK: - SPRITE
public extension TextureDetails {
  
  struct Sprite: Hashable, Equatable, RawRepresentable {
    
    public var rawValue: String
    public var timePerFrame: TimeInterval
    public var atlas: Atlas
    
    public init?(rawValue: String) {
      return nil
    }
    
    public init(_ rawValue: String, atlas: Atlas, timePerFrame: TimeInterval = 0) {
      self.rawValue = rawValue
      self.timePerFrame = timePerFrame
      self.atlas = atlas
    }
    
  }
  
}
