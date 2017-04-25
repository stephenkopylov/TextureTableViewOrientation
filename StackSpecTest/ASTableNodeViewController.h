//
//  ASTableNodeViewController.h
//  StackSpecTest
//
//  Created by Stepan Kopylov on 25/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

typedef NS_ENUM (NSUInteger, TVType) {
    TVTypeSingleLine,
    TVTypeMultiline
};

@interface ASTableNodeViewController : ASViewController

@property (nonatomic, readonly) TVType type;

- (instancetype)initWithType:(TVType)type;

@end
