//
//  PlayingCard.h
//  Machismo
//
//  Created by Kevin Wilkinson on 5/18/13.
//  Copyright (c) 2013 Kevin Wilkinson. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
