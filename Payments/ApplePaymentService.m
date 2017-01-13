//
//  ApplePaymentService.m
//  Payments
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(BOOL)canProcessPayment{
    if(arc4random_uniform(2) == 0)
        return NO;
    return YES;
}

-(void)processPaymentAmount:(NSInteger)price{
    NSLog(@"Apple processed amount $%lu",price);
}

@end
