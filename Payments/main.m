//
//  main.m
//  Payments
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *collector = [[InputCollector alloc]init];
        NSInteger price = arc4random_uniform(901)+100;
        NSString *input = [collector inputFromPrompt:[NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%lu Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: Apple \n\ninput ",price]];
        int paymentMethod = [input intValue];
        
        PaymentGateway *gateway = [[PaymentGateway alloc]init];
       // [gateway processPaymentAmount:price];
        
        switch (paymentMethod) {
                
            case 1:{
                PaypalPaymentService *paypal = [PaypalPaymentService new];
                gateway.paymentDelegate = paypal;
                [gateway processPaymentAmount:price];}
                break;
            case 2:{
                StripePaymentService *stripe = [StripePaymentService new];
                gateway.paymentDelegate = stripe;
                [gateway processPaymentAmount:price];}
                break;
            case 3:{
                AmazonPaymentService *amazon = [AmazonPaymentService new];
                gateway.paymentDelegate = amazon;
                [gateway processPaymentAmount:price];}
            case 4:{
                ApplePaymentService *apple = [ApplePaymentService new];
                gateway.paymentDelegate = apple;
                [gateway processPaymentAmount:price];}
            default:
                break;
        }
        
        
        
        
    }
    return 0;
}
