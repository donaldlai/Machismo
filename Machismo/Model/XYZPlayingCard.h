//
//  XYZPlayingCard.h
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZCard.h"

@interface XYZPlayingCard : XYZCard
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;
@end
