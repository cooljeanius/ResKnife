#import "DescWindowController.h"

@implementation DescWindowController

- (id)initWithResource:(id <ResKnifeResourceProtocol>)newResource
{
	self = [self initWithWindowNibName:@"desc"];
	if( !self ) return nil;
	return self;
}

- (void)windowDidLoad
{
	[super windowDidLoad];
	[self showWindow:self];
}

@end
