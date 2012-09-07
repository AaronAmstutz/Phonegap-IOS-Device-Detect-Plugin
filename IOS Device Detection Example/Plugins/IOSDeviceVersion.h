//
//  IOSDeviceVersion.h
//  IOS Device Detection Example
//
//  Created by Aaron Amstutz on 9/7/12.
//

#import <Cordova/CDV.h>

@interface IOSDeviceVersion : CDVPlugin
- (void) device: (NSMutableArray*)arguments withDict:(NSMutableDictionary*) options;
@end
