//
//  XYZDeck.h
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZCard.h"

@interface XYZDeck : NSObject

- (void) addCard:(XYZCard *)card atTop:(BOOL)atTop;
- (void) addCard:(XYZCard *)card;

- (XYZCard *) drawRandomCard;
@end
