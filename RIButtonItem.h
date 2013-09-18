//
//  RIButtonItem.h
//  Shibui
//
//  Created by Jiva DeVoe on 1/12/11.
//  Copyright 2011 Random Ideas, LLC. All rights reserved.
//

typedef void (^ButtonDidClicked)(NSString *stringFirst, NSString *stringSecond);

#import <Foundation/Foundation.h>

@interface RIButtonItem : NSObject

@property (nonatomic, retain) NSString *label;
@property (nonatomic, copy) ButtonDidClicked buttonDidClicked;

+(id)item;
+(id)itemWithLabel:(NSString *)inLabel;
+(id)itemWithLabel:(NSString *)inLabel buttonDidClicked:(ButtonDidClicked)buttonDidClicked;

@end

