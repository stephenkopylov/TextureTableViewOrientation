//
//  CustomCell.m
//  StackSpecTest
//
//  Created by Stepan Kopylov on 25/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell ()

@property (nonatomic, strong) ASTextNode *textNode;
@property (nonatomic, strong) ASTextNode *textNode2;
@property (nonatomic, strong) ASTextNode *textNode3;
@property (nonatomic, strong) ASTextNode *textNode4;

@end

@implementation CustomCell

- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    
    if ( self ) {
        _textNode = [[ASTextNode alloc] init];
        _textNode.style.flexBasis = ASDimensionMakeWithFraction(0.2f);
        _textNode.style.flexShrink = 1.f;
        
        _textNode2 = [[ASTextNode alloc] init];
        _textNode2.style.flexBasis = ASDimensionMakeWithFraction(0.3f);
        _textNode2.style.flexShrink = 1.f;
        
        _textNode3 = [[ASTextNode alloc] init];
        _textNode3.style.flexBasis = ASDimensionMakeWithFraction(0.3f);
        _textNode3.style.flexShrink = 1.f;
        
        _textNode4 = [[ASTextNode alloc] init];
        _textNode4.style.flexBasis = ASDimensionMakeWithFraction(0.2f);
        _textNode4.style.flexShrink = 1.f;
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string attributes:nil];
        
        _textNode.attributedText = attributedString;
        _textNode2.attributedText = attributedString;
        _textNode3.attributedText = attributedString;
        _textNode4.attributedText = attributedString;
        
        [self addSubnode:_textNode];
        [self addSubnode:_textNode2];
        [self addSubnode:_textNode3];
        [self addSubnode:_textNode4];
    }
    
    return self;
}


- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
    ASStackLayoutSpec *hStackSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:10.f justifyContent:ASStackLayoutJustifyContentStart alignItems:ASStackLayoutAlignItemsStretch children:@[self.textNode, self.textNode2, self.textNode3, self.textNode4]];
    
    ASInsetLayoutSpec *insetSpec2 = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(8.f, 0.f, 8.f, 0.f) child:hStackSpec];
    
    return insetSpec2;
}


@end
