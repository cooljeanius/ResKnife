#if defined(__APPLE_CC__)		// compiling with gcc
	#include <Carbon/Carbon.r>
#else							// compiling with CodeWarrior, __MWERKS__
	#include <Carbon.r>
#endif

/*** APPLE MENU ***/
/*resource 'MENU' (128)
{
	128,
	textMenuProc,
	0xFFFFFFFF,
	enabled,
	apple,
	{
		"About ResKnife�", noIcon, "A", noMark, plain,
		"Plug�ins", noIcon, 135, noMark, plain,
		seperator
	}
};*/

resource 'xmnu' (128, purgeable)
{
	versionZero
	{
		{
			dataItem { 'abou', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'plug', kMenuNoModifiers, currScript, 0, 0, 135, sysFont, naturalGlyph }
		}
	};
};

/*** FILE MENU ***/
resource 'MENU' (129)
{
	129,
	textMenuProc,
	0xFFFFFFFF,
	enabled,
	"File",
	{
		"New File", noIcon, "N", noMark, plain,
		"Open File�", noIcon, "O", noMark, plain,
		"Close Window", noIcon, "W", noMark, plain,
		"Close File", noIcon, "W", noMark, plain,
		"Save File", noIcon, "S", noMark, plain,
		"Save File As�", noIcon, "S", noMark, plain,
		"Revert�", noIcon, noKey, noMark, plain,
		"-", noIcon, noKey, noMark, plain,
		"Page Setup�", noIcon, "P", noMark, plain,
		"Print", noIcon, "P", noMark, plain,
		"-", noIcon, noKey, noMark, plain,
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'xmnu' (129, purgeable)
{
	versionZero
	{
		{
			dataItem { 'new ', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'open', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'clos', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'clsf', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'save', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'svas', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'rvtf', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'setu', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'prin', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'quit', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph }
		}
	};
};

resource 'xmnu' (130, purgeable)
{
	versionZero
	{
		{
			dataItem { 'undo', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'redo', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'cut ', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'copy', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'past', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'clea', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'sall', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'find', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'agin', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'pref', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
		}
	};
};

resource 'xmnu' (131, purgeable)
{
	versionZero
	{
		{
			dataItem { 'newr', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'edit', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'tmpl', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'tmp ', kMenuShiftModifier | kMenuOptionModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'hex ', kMenuOptionModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'rvtr', kMenuShiftModifier, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'play', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
		}
	};
};

resource 'xmnu' (135, purgeable)
{
	versionZero
	{
		{
			dataItem { 'orgn', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { '!hex', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { '!tmp', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
		}
	};
};

resource 'xmnu' (200, purgeable)
{
	versionZero
	{
		{
			dataItem { 'dbug', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			skipItem {},
			dataItem { 'surp', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'appl', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'appr', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'nav ', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
			dataItem { 'shet', kMenuNoModifiers, currScript, 0, 0, noHierID, sysFont, naturalGlyph },
		}
	};
};

/*** APPLE EVENTS ***/
#if defined(__MWERKS__)		// compiling with CodeWarrior
	#include "AppleEvents.r"
	#include "AEObjects.r"
	#include "AERegistry.r"
	#include "ASRegistry.r"
	#include "AEUserTermTypes.r"
#endif

#define kAEResourceEditorSuite	'rsrc'
#define kAEResourceClass		'rsrc'
#define kAEResourceName			'name'
#define kAEResourceType			'type'
#define kAECompactResource		'cpct'

resource kAETerminologyExtension ( 0, "AppleScript Dictionary" )
{
	1,	// major version
	0,	// minor version
	english,
	roman,	// should be same as resource ID
	{
		"Required Suite",
		"Terms that every application supports",
		kAERequiredSuite,
		1, // level
		1, // version
		{ /* events */
/* 1 */		"run",
			"Sent to the application when it is opened",
			kCoreEventClass,
			kAEOpenApplication,
			
			/* reply */
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			
			/* direct parameter */
			noParams,
			"",
			directParamOptional,
			singleItem,
			notEnumerated,
			changesState,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			{ /* other parameters */ },
			
/* 2 */		"open",
			"Open the specified object(s)",
			kCoreEventClass,
			kAEOpenDocuments,
			
			/* reply */
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			
			/* direct parameter */
			typeAlias,
			"list of objects to open",
			directParamRequired,
			listOfItems,
			notEnumerated,
			changesState,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			{ /* other parameters */ },
			
/* 3 */		"print",
			"Print the specified object(s)",
			kCoreEventClass,
			kAEPrintDocuments,
			
			/* reply */
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			
			/* direct parameter */
			typeAlias,
			"list of objects to print",
			directParamRequired,
			listOfItems,
			notEnumerated,
			changesState,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			{ /* other parameters */ },
			
/* 4 */		"quit",
			"Quit the application",
			kCoreEventClass,
			kAEQuitApplication,
			
			/* reply */
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			
			/* direct parameter */
			noParams,
			"",
			directParamOptional,
			singleItem,
			notEnumerated,
			changesState,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			{ /* other parameters */ }
		},
		{ /* classes */ },
		{ /* comparison operators */ },
		{ /* enumerations */ },
		
		"Resource Editor Suite",
		"Terms that modern resource editors support",
		kAEResourceEditorSuite,
		1, // level
		1, // version
		{ /* array Events */
/* 1 */		"compact",
			"Compact the specified resource(s)",
			kAEResourceClass,
			kAECompactResource,
			
			/* reply */
			noReply,
			"",
			replyOptional,
			singleItem,
			notEnumerated,
			reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			
			/* direct parameter */
			typeAlias,
			"list of resources to compact",
			directParamRequired,
			listOfItems,
			notEnumerated,
			changesState,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			reserved, reserved, reserved, reserved,
			{ /* other parameters */ },
		},
		{ /* classes */
			"resource",
			kAEResourceClass,
			"a resource of given type and ID",
			{ /* class properties */
/* a */			"name",
				kAEResourceName,
				typeText,
				"the name of the resource (up to 255 chars in length)",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				reserved, reserved, reserved, reserved,
				reserved, reserved, reserved, reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular,
				
/* b */			"type",
				kAEResourceType,
				typeUInt32,
				"the type of the resource (four chars in length)",
				reserved,
				singleItem,
				notEnumerated,
				readWrite,
				reserved, reserved, reserved, reserved,
				reserved, reserved, reserved, reserved,
				noApostrophe,
				notFeminine,
				notMasculine,
				singular
			},
			{ /* elements */ }
		},
		{ /* comparison operators */ },
		{ /* enumerations */ }
	}
};
