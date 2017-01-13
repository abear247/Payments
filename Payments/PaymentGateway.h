//
//  PaymentGateway.h
//  Payments
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>;

-(BOOL)canProcessPayment;

-(void)processPaymentAmount:(NSInteger)price;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id paymentDelegate;

-(void)processPaymentAmount:(NSInteger)price;

@end
