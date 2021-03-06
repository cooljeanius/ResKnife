/*
 *     Generated by class-dump 3.3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2011 by Steve Nygard.
 */

#import "UKTemplateField.h"

@class NSMutableArray;

@interface UKArrayTemplateField : UKTemplateField
{
    NSMutableArray *fields;
}

+ (void)load;
- (id)initWithSettingsDictionary:(id)arg1;
- (void)dealloc;
- (void)readFromData:(id)arg1 offset:(int *)arg2;
- (void)loadDefaults;
- (void)load:(int)arg1 fieldsFromData:(id)arg2 offset:(int *)arg3 afterField:(id)arg4;
- (void)addNewFieldAfterField:(id)arg1;
- (void)deleteField:(id)arg1;
- (void)writeToData:(id)arg1 offset:(int *)arg2;
- (id)plistRepresentation;
- (id)fieldValue;
- (BOOL)canHaveSubFields;
- (int)countSubFields;
- (id)subFieldAtIndex:(int)arg1;
- (BOOL)fieldValueIsEditableForKey:(id)arg1;
- (BOOL)isSelectable;
- (void)addNewField:(id)arg1;

@end

