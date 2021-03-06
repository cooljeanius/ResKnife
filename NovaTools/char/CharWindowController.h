#import <Cocoa/Cocoa.h>
#import "NovaWindowController.h"

#define titleField			[titleForm cellAtIndex:0]
#define cashField			[goodiesForm cellAtIndex:0]
#define killsField			[goodiesForm cellAtIndex:1]
#define prefixField			[timeForm cellAtIndex:0]
#define suffixField			[timeForm cellAtIndex:1]
#define statusField1		[statusForm cellAtIndex:0]
#define statusField2		[statusForm cellAtIndex:1]
#define statusField3		[statusForm cellAtIndex:2]
#define statusField4		[statusForm cellAtIndex:3]
#define governmentField1	[governmentForm cellAtRow:0 column:0]
#define governmentField2	[governmentForm cellAtRow:1 column:0]
#define governmentField3	[governmentForm cellAtRow:2 column:0]
#define governmentField4	[governmentForm cellAtRow:3 column:0]
#define startField1			[startForm cellAtRow:0 column:0]
#define startField2			[startForm cellAtRow:1 column:0]
#define startField3			[startForm cellAtRow:2 column:0]
#define startField4			[startForm cellAtRow:3 column:0]
#define introPictField1		[introPictTextForm cellAtRow:0 column:0]
#define introPictField2		[introPictTextForm cellAtRow:1 column:0]
#define introPictField3		[introPictTextForm cellAtRow:2 column:0]
#define introPictField4		[introPictTextForm cellAtRow:3 column:0]
#define introTextField		[introPictTextForm cellAtRow:4 column:0]
#define introDelayField1	[introDelayForm cellAtIndex:0]
#define introDelayField2	[introDelayForm cellAtIndex:1]
#define introDelayField3	[introDelayForm cellAtIndex:2]
#define introDelayField4	[introDelayForm cellAtIndex:3]
#define onStartField		[ncbForm cellAtIndex:0]

@interface CharWindowController : NovaWindowController
{
	CharRec *charRec;
	
	// =====
	
	// char info
	IBOutlet NSForm *titleForm;
	IBOutlet NSButton *principalCharButton;
	IBOutlet NSComboBox *shipField;
	IBOutlet NSForm *goodiesForm;
	
	// beginning of time
	IBOutlet NSTextField *dayField;
	IBOutlet NSTextField *monthField;
	IBOutlet NSTextField *yearField;
	IBOutlet NSStepper *dayStepper;
	IBOutlet NSStepper *monthStepper;
	IBOutlet NSStepper *yearStepper;
	IBOutlet NSForm *timeForm;
	
	// govt status & start locs
	IBOutlet NSForm *statusForm;
	IBOutlet NSMatrix *governmentForm;
	IBOutlet NSMatrix *startForm;
	
	// introduction
	IBOutlet NSMatrix *introPictTextForm;
	IBOutlet NSForm *introDelayForm;
	IBOutlet NSButton *introImageView;		// button so user can click to skip to next pic
	IBOutlet NSTextView *introTextView;
	
	// ncbs
	IBOutlet NSForm *ncbForm;
	
	// ======
	
	// char
	BOOL principalChar;
	
	// Initial Goodies
	NSNumber *ship;
	NSNumber *cash;
	NSNumber *kills;
	
	// Beginning Of Time
	NSCalendarDate *date;
	NSString *prefix;
	NSString *suffix;
	
	// Starting Location
	NSNumber *start1;
	NSNumber *start2;
	NSNumber *start3;
	NSNumber *start4;
	
	// Governments
	NSNumber *status1;
	NSNumber *status2;
	NSNumber *status3;
	NSNumber *status4;
	NSNumber *government1;
	NSNumber *government2;
	NSNumber *government3;
	NSNumber *government4;
	
	// Introduction
	NSNumber *introText;
	NSNumber *introPict1;
	NSNumber *introPict2;
	NSNumber *introPict3;
	NSNumber *introPict4;
	NSNumber *introDelay1;
	NSNumber *introDelay2;
	NSNumber *introDelay3;
	NSNumber *introDelay4;
	NSTimer *introPictTimer;
	short currentPict;
	
	// Nova Control Bits
	NSString *onStart;
}

- (void)update;
- (IBAction)editDate:(id)sender;
- (IBAction)stepDate:(id)sender;
- (IBAction)togglePrincipalChar:(id)sender;
- (void)rotateIntroPict:(NSTimer *)timer;
- (void)comboBoxWillPopUp:(NSNotification *)notification;
- (void)controlTextDidChange:(NSNotification *)notification;

@end
