//
//  Deck.h
//  Machismo
//
//  Created by Kevin Wilkinson on 5/13/13.
//  Copyright (c) 2013 Kevin Wilkinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end
