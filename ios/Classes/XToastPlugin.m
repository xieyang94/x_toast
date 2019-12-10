#import "XToastPlugin.h"
#import <x_toast/x_toast-Swift.h>

@implementation XToastPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXToastPlugin registerWithRegistrar:registrar];
}
@end
