//
//  CustomCell.h
//  StackSpecTest
//
//  Created by Stepan Kopylov on 25/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface CustomCell : ASCellNode

@property (nonatomic) NSString *string;

- (instancetype)initWithString:(NSString *)string;

@end
