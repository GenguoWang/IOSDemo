//
//  AppDelegate.m
//  IOSDemo
//
//  Created by mark on 15/2/2.
//  Copyright (c) 2015年 mark. All rights reserved.
//
#import "UIImageView+WebCache.h"
#import "UIButton+WebCache.h"
#import "AppDelegate.h"
//import <SDWebImage/UIImageView+WebCache.h>
//#import <

//#import <UIImageView+WebCache.h>

//#import "UIImageView+WebCache.h>
@interface AppDelegate ()

@end

@implementation AppDelegate

- (void) testAsynButton{
    UIViewController *vc = self.window.rootViewController;
    UIView *v = vc.view;
    UIButton * btn = [[UIButton alloc] init];
    
    //[btn setBackgroundImage:[UIImage imageNamed:@"sing"] forState:UIControlStateNormal];
    //UIImageView * img = [UIImageView new];
    //[img setImageWithURL:[NSURL URLWithString:@"www.istar.name/...."] placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    //[img setImageWit]
    //[img sd_setImageWithURL:<#(NSURL *)#>]
    //[img setImageWithURL]
    [btn.titleLabel setText:@"wgg"];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setTitle:@"wgg" forState:UIControlStateNormal];
    [btn sd_setBackgroundImageWithURL:[NSURL URLWithString:@"http://www.baidu.com/img/bdlogo.png"] forState:UIControlStateNormal];
    //[btn setBackgroundImage:[UIImage imageNamed:@"sing"] forState:UIControlStateNormal];
    //[btn sd_set]
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    v.translatesAutoresizingMaskIntoConstraints = NO;
    //[btn imageView]
    /*
     CGRect rect;
     CGPoint pt;
     pt.x = 400;
     pt.y = 400;
     rect.origin = pt;
     CGSize size;
     size.height = 200;
     size.width = 200;
     rect.size = size;
     [btn setBounds:rect];
     */
    //[btn setBounds:[[CGRect alloc] ];
    [v addSubview:btn];
    
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:v attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:v attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:v attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    [v addConstraints:@[constraint1,constraint2,constraint3]];
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *constraint5 = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    //[btn addConstraints:@[constraint4,constraint5]];
    
    NSLog(@"%@: %@", [btn titleForState:UIControlStateNormal],
          NSStringFromCGSize(btn.intrinsicContentSize));
    NSLog(@"%@: %@", [btn titleForState:UIControlStateNormal],
          NSStringFromCGRect(btn.frame));
    //_navController = [storyBoard instantiateViewControllerWithIdentifier:@"NavController"];
    //_detailViewController = [storyBoard instantiateViewControllerWithIdentifier:@"DetailView"];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.window.rootViewController = [storyBoard instantiateViewControllerWithIdentifier:@"TestColl"];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
