//
//  PaymentGateway.m
//  Payments
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)price{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:price];
        return;
    }
    NSLog(@"Sorry, cannot process payment");
    return;
}

@end
