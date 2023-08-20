#import <Cocoa/Cocoa.h>

#import "ResKnifeResourceProtocol.h"

@class HexWindowController, HexTextView, AsciiTextView;

@interface HexEditorDelegate : NSObject

@property (weak) HexWindowController		*controller;
@property (unsafe_unretained) NSTextView	*offset;
@property (unsafe_unretained) HexTextView	*hex;
@property (unsafe_unretained) AsciiTextView	*ascii;
@property (weak) NSTextField				*message;
@property (readonly) NSRange rangeForUserTextChange;
@property BOOL editedLow;

- (void)viewDidScroll:(NSNotification *)notification;
- (NSString *)offsetRepresentation:(NSData *)data;

#ifdef __HEAD__
- (HexWindowController *)controller;
- (NSTextView *)hex;
- (NSTextView *)ascii;

- (BOOL)editedLow;
- (void)setEditedLow:(BOOL)flag;
- (NSRange)rangeForUserTextChange;

#endif /* __HEAD__ */
@end
