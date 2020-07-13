//
//  ViewController.m
//  aesDemo
//
//  Created by admin on 2020/7/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "ViewController.h"

#import "NSData+AES.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     NSString *str = @"138123456781760010000115946293714162";
     NSString *key = @"5eed355ce621934032380676f1d3f4bb";

    NSData *plainTextData = [str dataUsingEncoding:NSUTF8StringEncoding];
    plainTextData = [plainTextData AES128EncryptedDataWithKey:key iv:NULL];
    NSString *base64Str = [plainTextData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    NSString *urlencode = [base64Str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet alphanumericCharacterSet]];
    
    NSLog(@"key :%@",key);
    NSLog(@"加密前 :%@",str);
    NSLog(@"加密后 :%@",plainTextData);
    NSLog(@"url后 :%@",urlencode);
    
}


@end
