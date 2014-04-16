//
//  XYZDeck.m
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZDeck.h"

@interface XYZDeck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation XYZDeck

- (NSMutableArray *) cards{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}
- (void) addCard:(XYZCard *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex: 0];
    } else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(XYZCard *)card{
    [self addCard:card atTop:NO];
}

- (XYZCard *) drawRandomCard{
    XYZCard *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }

    
    return randomCard;
}

@end
