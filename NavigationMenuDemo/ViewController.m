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
        XYMenuButton *button1 = [[XYMenuButton alloc] initWithTitle:@"title1" buttonIcon:[UIImage imageNamed:@"Img1"]];
        XYMenuButton *button2 = [[XYMenuButton alloc] initWithTitle:@"title2" buttonIcon:[UIImage imageNamed:@"Img1"]];
        XYMenuButton *button3 = [[XYMenuButton alloc] initWithTitle:@"title3" buttonIcon:[UIImage imageNamed:@"Img1"]];
        XYMenuButton *button4 = [[XYMenuButton alloc] initWithTitle:@"title4" buttonIcon:[UIImage imageNamed:@"Img1"]];
        _menu = [[XYNavigationMenu alloc] initWithItems:@[button1, button2, button3, button4]];
    }
    return _menu;
}

@end
