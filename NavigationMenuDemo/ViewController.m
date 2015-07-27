//
//  ViewController.m
//  NavigationMenuDemo
//
//  Created by 汪鑫源 on 15/7/26.
//  Copyright (c) 2015年 汪鑫源. All rights reserved.
//

#import "ViewController.h"
#import "XYNavigationMenu.h"

@interface ViewController ()

@property (strong, nonatomic) XYNavigationMenu *menu;

@end

@implementation ViewController

#pragma mark - lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - @IBAction
- (IBAction)didTapNavigationMenu:(id)sender {
    if (self.menu.isOpen) {
        [self.menu dismiss];
    } else {
        [self.menu showInNavigationController:self.navigationController didTapBlock:^(UIButton *button) {
            NSLog(@"%ld", (long)button.tag);
        }];
    }
}

#pragma mark - getter and setter
- (XYNavigationMenu *)menu {
    if (!_menu) {
        XYMenuButton *button = [[XYMenuButton alloc] initWithTitle:@"title" buttonIcon:[UIImage imageNamed:@"Img1"]];
        _menu = [[XYNavigationMenu alloc] initWithItems:@[button, button]];
    }
    return _menu;
}

@end
