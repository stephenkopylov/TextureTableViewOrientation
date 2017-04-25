//
//  ASTableNodeViewController.m
//  StackSpecTest
//
//  Created by Stepan Kopylov on 25/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "ASTableNodeViewController.h"
#import "CustomCell.h"

@interface ASTableNodeViewController ()<ASTableDelegate, ASTableDataSource>

@property (nonatomic) ASTableNode *tableNode;

@property (nonatomic, readwrite) TVType type;

@end

@implementation ASTableNodeViewController

- (instancetype)initWithType:(TVType)type
{
    _tableNode = [ASTableNode new];
    
    self = [super initWithNode:_tableNode];
    
    if ( self ) {
        _type = type;
        _tableNode.delegate = self;
        _tableNode.dataSource = self;
    }
    
    return self;
}


- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section
{
    return 100;
}


- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ^{
        NSString *string = @"";
        
        switch ( _type )
        {
            case TVTypeSingleLine: {
                string = @"Lorem";
                break;
            }
                
            case TVTypeMultiline: {
                string = @"Lorem ipsum dolor sit amet, enim veritus mel at. Eos eu agam iracundia posidonium, ei sea numquam evertitur rationibus, cu agam dolor aperiri qui. Tale saepe est eu, feugait placerat ocurreret sit ex";
                break;
            }
                
            default:
                break;
        }
        
        CustomCell *cellNode = [[CustomCell alloc] initWithString:string];
        
        return cellNode;
    };
}


@end
