//
//  XYZCard.m
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZCard.h"

@implementation XYZCard

@synthesize contents = _contents;

- (NSString *) contents{
    return _contents;
}

- (void) setContents:(NSString *)contents{
    _contents = contents;
}

- (int) match:(NSArray *)otherCards{
    int score = 0;
    
    for (XYZCard *card in otherCards) {
        if ([card.contents isEqualToString: self.contents]) {
            score *= 2;
        }
    }


    return score;
}

@end
