//
//  IOSDeviceVersion.m
//  IOS Device Detection Example
//
//  Created by Aaron Amstutz on 9/7/12.
//

#import "IOSDeviceVersion.h"
#import <AVFoundation/AVFoundation.h>
@implementation IOSDeviceVersion

- (void) device: (NSMutableArray*)arguments withDict:(NSMutableDictionary*) options
{
    NSString * callbackId = [arguments objectAtIndex:0];
    CDVPluginResult* pluginResult;
    if ([AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo].count) {
        // If the device has a camera, its greater than iPad 1
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"iPad2"];
    } else {
        // Its probably an iPad 2
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"iPad1"];
    }
    // Check for retina
    if ([UIScreen instancesRespondToSelector:@selector(scale)]) 
    {
        CGFloat scale = [[UIScreen mainScreen] scale];
        if (scale > 1.0) 
        {
            // It has retina, so its an iPad 3 or greater
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"iPad3"];
        }
    }
    [self writeJavascript: [pluginResult toSuccessCallbackString:callbackId]];
}

@end
