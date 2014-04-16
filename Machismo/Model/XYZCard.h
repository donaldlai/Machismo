//
//  XYZCard.h
//  Machismo
//
//  Created by Donald Lai on 4/16/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZCard : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int) match:(NSArray *) otherCards;
@end
