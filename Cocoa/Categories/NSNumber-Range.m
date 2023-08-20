#import "NSNumber-Range.h"

@implementation NSNumber (NGSRange)

- (BOOL)isWithinRange:(NSRange)range				// location <= self <= location+length
{
	// e.g. for {6,1} a value of 6.000 will return true, as will 7.000
	return [self compare:@(range.location)] != NSOrderedAscending && [self compare:@(range.location+range.length)] != NSOrderedDescending;
}

- (BOOL)isExclusivelyWithinRange:(NSRange)range		// location < self < location+length
{
	// e.g. for {6,1} a value of 6.000 will return false, 6.001 will return true, 6.999 will return true, 7.000 false
	return [self compare:@(range.location)] == NSOrderedDescending && [self compare:@(range.location+range.length)] == NSOrderedAscending;
}

- (BOOL)isBoundedByRange:(NSRange)range				// location <= self < location+length
{
	// e.g. for {6,1} a value of 6.000 will return true, 6.999 will return true, 7.000 will not
	return [self compare:@(range.location)] != NSOrderedAscending && [self compare:@(range.location+range.length)] == NSOrderedAscending;
}

@end
