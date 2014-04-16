//
//  XYZPlayingCard.m
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZPlayingCard.h"

@implementation XYZPlayingCard

- (NSString *) contents{
//    return [NSString stringWithFormat: @"%d%@", self.rank, self.suit];
    NSArray *rankString = [XYZPlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString: self.suit];
}

+ (NSArray *) validSuits{
    return @[@"♣︎",@"♠︎",@"♥︎",@"♦︎"];
}

+ (NSArray *) rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger) maxRank { return [[self rankStrings] count] -1; }

@synthesize suit = _suit;

- (void) setSuit:(NSString *)suit{
    if ([[XYZPlayingCard validSuits] containsObject: suit]) {
        _suit = suit;
    }
}
         
- (NSString *) suit{
    return _suit ? _suit : @"?";
}

- (void) setRank:(NSUInteger)rank{
    if (rank <= [XYZPlayingCard maxRank]) {
        _rank = rank;
    }
}
         
@end
