/*
 *     Generated by class-dump 3.3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2011 by Steve Nygard.
 */

#import "UKTemplateField.h"

@interface UKPluginTemplateField : UKTemplateField
{
    id pluginController;
}

- (void)dealloc;
- (void)setPluginController:(id)arg1;
- (void)readFromData:(id)arg1 offset:(int *)arg2;
- (void)writeToData:(id)arg1 offset:(int *)arg2;
- (id)plistRepresentation;
- (id)fieldValue;
- (id)fieldValueForKey:(id)arg1;
- (void)setFieldValue:(id)arg1 forKey:(id)arg2;
- (void)loadDefaults;
- (BOOL)canHaveSubFields;
- (int)countSubFields;
- (id)subFieldAtIndex:(int)arg1;
- (BOOL)fieldValueIsEditableForKey:(id)arg1;
- (BOOL)isSelectable;

@end
