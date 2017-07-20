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

@end