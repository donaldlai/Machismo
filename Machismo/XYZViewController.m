//
//  XYZViewController.m
//  Machismo
//
//  Created by Donald Lai on 4/14/14.
//  Copyright (c) 2014 Donald Lai. All rights reserved.
//

#import "XYZViewController.h"
#import "XYZPlayingCardDeck.h"
#import "XYZCard.h"

@interface XYZViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation XYZViewController

-(void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat: @"Flips: %d", self.flipCount];
    NSLog(@"Flips Count = %d", self.flipCount);
}


- (IBAction)touchCardButton:(UIButton *)sender {
//    UIImage *cardImage = [UIImage imageNamed:@"cardback"];
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage: [UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle: @""forState:UIControlStateNormal];
    } else{
        [sender setBackgroundImage: [UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        XYZPlayingCardDeck *deck = [[XYZPlayingCardDeck alloc] init];
        XYZCard *card = [deck drawRandomCard];
//        [sender setTitle: @"A♣︎"forState:UIControlStateNormal];
        [sender setTitle: card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}



@end
