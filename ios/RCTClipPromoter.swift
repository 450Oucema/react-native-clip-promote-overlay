//
//  RCTClipPromoter.swift
//  ChapkaClip
//
//  Created by Oucema JLAIEL on 03/08/2023.
//

import Foundation
import StoreKit
import UIKit

@available(iOS 12.0, *)
@objc(RCTClipPromoter)
open class RCTClipPromoter: NSObject {
  override init() {
    super.init()
  }
    
  @available(iOS 14.0, *)
  @objc(showClipActions:rejecter:) public func show(_ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        DispatchQueue.main.async(execute: {
            let scene = UIApplication.shared
              .connectedScenes
              .filter { $0.activationState == .foregroundActive }
              .first
          
            let config = SKOverlay.AppClipConfiguration(position: .bottom)
            let overlay = SKOverlay(configuration: config)
            overlay.present(in: scene as! UIWindowScene)
        })
    }
}
