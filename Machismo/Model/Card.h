//
//  Card.h
//  Machismo
//
//  Created by Kevin Wilkinson on 5/13/13.
//  Copyright (c) 2013 Kevin Wilkinson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;
- (int)match:(NSArray *)otherCards;

@end
