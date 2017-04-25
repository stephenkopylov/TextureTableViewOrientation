//
//  ViewController.m
//  StackSpecTest
//
//  Created by Stepan Kopylov on 25/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "ViewController.h"
#import "ASTableNodeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)singleLineClicked:(id)sender
{
    ASTableNodeViewController *tv = [[ASTableNodeViewController alloc] initWithType:TVTypeSingleLine];
    
    [self.navigationController pushViewController:tv animated:YES];
}


- (IBAction)multilineClicked:(id)sender
{
    ASTableNodeViewController *tv = [[ASTableNodeViewController alloc] initWithType:TVTypeMultiline];
    
    [self.navigationController pushViewController:tv animated:YES];
}


@end
