//
//  NuTemplateLSTBElement.m
//  ResKnife (PB2)
//
//  Created by Uli Kusterer on Tue Aug 05 2003.
//  Copyright (c) 2003 M. Uli Kusterer. All rights reserved.
//

#import "NuTemplateLSTBElement.h"
#import "NuTemplateLSTEElement.h"


@implementation NuTemplateLSTBElement

-(void)	dealloc
{
	[endElement release];
	[super dealloc];
}


-(void)		readSubElementsFrom: (NuTemplateStream*)stream
{
	while( [stream bytesToGo] > 0 )
	{
		NuTemplateElement*	obj = [stream readOneElement];
		
		if( [[obj type] isEqualToString: @"LSTE"] )
		{
			endElement = [obj retain];
			break;
		}
		[subElements addObject: obj];
	}
}


-(void)	readDataFrom: (NuTemplateStream*)stream
{
	NSEnumerator		*enny = [subElements objectEnumerator];
	NuTemplateElement	*el, *nextItem;
	unsigned int		bytesToGoAtStart = [stream bytesToGo];
	
	/* Fill this first list element with data:
		If there is no more data in the stream, the items will
		fill themselves with default values. */
	while( el = [enny nextObject] )
	{
		[el readDataFrom: stream];
	}
	
	/* Read additional elements until we have enough items,
		except if we're not the first item in our list. */
	if( containing != nil )
	{
		while( [stream bytesToGo] > 0 )
		{
			nextItem = [[self copy] autorelease];	// Make another list item just like this one.
			[nextItem setContaining: nil];			// Make sure it doesn't get into this "if" clause.
			[containing addObject: nextItem];		// Add it below ourselves.
			[nextItem readDataFrom:stream];			// Read it the same way we were.
			[nextItem setContaining: containing];	// Set "containing" *after* readDataFrom so it doesn't pass the "containing == nil" check above.
		}
		
		// Now add a terminating 'LSTE' item:
		NuTemplateLSTEElement*	tlee;
		tlee = [[endElement copy] autorelease];
		[containing addObject: tlee];
		[tlee setContaining: containing];
		[tlee setGroupElemTemplate: self];
		
		if( bytesToGoAtStart == 0 )		// It's an empty list. Delete this LSTB again, so we only have the empty LSTE.
		{
			[tlee setSubElements: subElements];	// Take over the LSTB's sub-elements.
			[containing removeObject:self];		// Remove the LSTB.
		}
		else
			[tlee setSubElements: [[subElements copy] autorelease]];	// Make a copy. So each has its own array.
	}
}


-(NSString*)	stringValue
{
	return @"";
}


-(id)	copyWithZone: (NSZone*)zone
{
	NuTemplateLSTBElement*	el = [super copyWithZone: zone];
	
	[el setEndElement: [self endElement]];
	
	return el;
}

-(void)	setEndElement: (NuTemplateLSTEElement*)e
{
	[e retain];
	[endElement release];
	endElement = e;
}


-(NuTemplateLSTEElement*)	endElement
{
	return endElement;
}


-(IBAction)	showCreateResourceSheet: (id)sender
{
	unsigned				idx = [containing indexOfObject:self];
	NuTemplateGroupElement*	te = [[self copy] autorelease];
	
	[containing insertObject:te atIndex:idx+1];
	[te setContaining:containing];
}


-(IBAction)	clear: (id)sender
{
	[[self retain] autorelease];		// Make sure we don't go away right now. That may surprise the one who called clear, or otherwise be bad.
	[containing removeObject: self];	// Remove us from the array we're in. (this releases us once)
}


@end
