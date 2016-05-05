//
//  ViewController.m
//  imagePicker
//
//  Created by 周伟 on 16/5/5.
//  Copyright © 2016年 yulimik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<DNImagePickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.btn.frame = CGRectMake(180, 180, 100, 100);
    self.btn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.btn];
    [self.btn setTitle:@"insert Album" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(insertAlbumView) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark - insert Album View
- (void)insertAlbumView
{
    DNImagePickerController *imagePicker = [[DNImagePickerController alloc] init];
    imagePicker.imagePickerDelegate = self;
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
