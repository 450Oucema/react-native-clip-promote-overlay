//
//  RCTClipPromoter.m
//  ChapkaClip
//
//  Created by Oucema JLAIEL on 03/08/2023.
//

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(RCTClipPromoter, NSObject)

RCT_EXTERN_METHOD(show: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}
@end

