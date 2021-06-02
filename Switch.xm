#import <Flipswitch/FSSwitchDataSource.h>
#import <Flipswitch/FSSwitchPanel.h>

@interface ASToggleSwitch : NSObject <FSSwitchDataSource>
@end

extern "C" Boolean _AXSAssistiveTouchEnabled();
extern "C" void _AXSAssistiveTouchSetEnabled(BOOL enabled);

@implementation ASToggleSwitch

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier {
	return _AXSAssistiveTouchEnabled() ? FSSwitchStateOn : FSSwitchStateOff;
}

- (void)applyState:(FSSwitchState)newState forSwitchIdentifier:(NSString *)switchIdentifier {
	if (newState == FSSwitchStateIndeterminate)
		return;
	_AXSAssistiveTouchSetEnabled(newState == FSSwitchStateOn);
}

- (void)applyAlternateActionForSwitchIdentifier:(NSString *)switchIdentifier
{
	NSURL *url = [NSURL URLWithString:(kCFCoreFoundationVersionNumber >= 1665.0f ? @"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE#EnableAssistiveTouchSpecifier" : @"prefs:root=General&path=ACCESSIBILITY/AIR_TOUCH_TITLE#AIR_TOUCH_TITLE")];
	[[FSSwitchPanel sharedPanel] openURLAsAlternateAction:url];
}

@end