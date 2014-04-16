//
//  XYZPlayingCardDeck.m
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZPlayingCardDeck.h"
#import "XYZPlayingCard.h"

@implementation XYZPlayingCardDeck
-(instancetype) init{
    self = [super init];
    if (self) {
        for (NSString *suit in [XYZPlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [XYZPlayingCard maxRank]; rank ++) {
                XYZPlayingCard *card = [[XYZPlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }

    return self;
}
@end
