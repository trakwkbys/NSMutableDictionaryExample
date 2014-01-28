//
//  ONViewController.m
//  NSMutableDictionaryExample
//
//  Created by trakwkbys on 2013/03/26.
//  Copyright (c) 2013年 onemorething.jp. All rights reserved.
//

#import "ONViewController.h"

@interface ONViewController ()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@implementation ONViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self example];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* ------------------------------------------------------------------------------------------------------------------ */
#pragma mark -
#pragma mark Example

- (void)example
{

    self.dictionary = [NSMutableDictionary dictionary];
    
    NSMutableDictionary *item1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                 [NSNumber numberWithInteger:1],         @"count",
                                 @"1234",   @"date",
                                 nil];
    NSMutableDictionary *item2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  [NSNumber numberWithInteger:2],         @"count",
                                  @"9999",   @"date",
                                  nil];
    
    NSMutableDictionary *item3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  @3,         @"count",
                                  @"9999",   @"date",
                                  nil];


    // 代入
    [self.dictionary setObject:item1 forKey:@"itemOne"];

    // 代入（モダン）
    self.dictionary[@"itemTwo"] = item2;
    self.dictionary[@"itemThree"] = item3;

    NSLog(@"test%@", self.dictionary[@"itemOne"]);
    NSLog(@"test%@", self.dictionary[@"itemTwo"]);

    // 取得
    NSMutableDictionary *getItem = [self.dictionary objectForKey:@"itemOne"];
    NSLog(@"count:%@", [getItem objectForKey:@"count"]);
    NSLog(@"count:%@", [getItem objectForKey:@"date"]);
    
    for (NSMutableDictionary *dict in self.dictionary)
    {
        NSLog(@"dict %@", dict);
    }
    
    
    // NSDictionaryの生成（Xcode 4.4）
    NSDictionary *modenDict = @{
                                @"itemOne" : item1,
                                @"itemTwo" : item2,
                                @"itemThree" : item3

                                };
    
    NSLog(@"moden %@", modenDict[@"itemOne"]);
    NSLog(@"moden %@", modenDict[@"itemTwo"]);
    NSLog(@"moden %@", modenDict[@"itemThree"]);


    
}

@end
