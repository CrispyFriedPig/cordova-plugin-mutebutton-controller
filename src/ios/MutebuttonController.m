/********* MutebuttonController.m Cordova Plugin Implementation *******/
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>

@interface MutebuttonController : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation MutebuttonController

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    UIImage *image = [UIImage imageWithContentsOfFile:echo];
    if (echo != nil && [echo length] > 0) {
        CGFloat width = image.size.width;
        CGFloat height = image.size.height;
        NSDictionary *dic = @{@"width":[NSString stringWithFormat:@"%d",width],
                              @"height":[NSString stringWithFormat:@"%d",height]};
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
