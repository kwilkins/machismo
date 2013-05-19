//
//  CardGameViewController.m
//  Machismo
//
//  Created by Kevin Wilkinson on 5/13/13.
//  Copyright (c) 2013 Kevin Wilkinson. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *playingCardDeck;

@end

@implementation CardGameViewController

- (PlayingCardDeck *)playingCardDeck {
    if (!_playingCardDeck) {
        _playingCardDeck = [[PlayingCardDeck alloc] init];
    }
    return _playingCardDeck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Cards Seen: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    // Only on face up (not selected)
    if (!sender.isSelected) {
        Card *card = [self.playingCardDeck drawRandomCard];
        if (!card) {
            //re-initialize deck
            card = [[self.playingCardDeck init] drawRandomCard];
            self.flipCount = 0;
        }
        
        [sender setTitle:card.contents forState:UIControlStateSelected];
        self.flipCount++;
    }
    
    sender.selected = !sender.isSelected;
}

@end
