//
//  ShoppingCartViewController.m
//  City Bicycle Co.
//
//  Created by Vala Kohnechi on 11/25/14.
//  Copyright (c) 2014 MVA. All rights reserved.
//

#import "ShoppingCartViewController.h"
#import "Stripe.h"
#import "Stripe+ApplePay.h"

@import PassKit;


@interface ShoppingCartViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buyWithApplePayButton;

@end

@implementation ShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PKPaymentRequest *request = [Stripe paymentRequestWithMerchantIdentifier:@"merchant.com.MVA-City-Bicycle-Co"];
    
    //Configure request here.
    NSString *label = @"Premium Llama Food";
    NSDecimalNumber *amount = [NSDecimalNumber decimalNumberWithString:@"10.00"];
    request.paymentSummaryItems = @[[PKPaymentSummaryItem summaryItemWithLabel:label amount:amount]];
    
    if ([Stripe canSubmitPaymentRequest:request])
    {
        UIViewController *test;
        
#if DEBUG
        
        if (<#condition#>) {
            <#statements#>
        }
        
    }
    
    
    
    
    
    if ([Stripe canSubmitPaymentRequest:request])
    {
        
        UIViewController *paymentController;
        
#if DEBUG

        paymentController
#else
    
#endif
        
        
    }
    
    
        
        
        
        pa
        
        
        
        
        
        
        ]
        UIViewController *paymentController;
        
#if DEBUG
        paymentController = [[STPTestPaymentAuthorizationViewController alloc]
                             initWithPaymentRequest:];
        paymentController.delegate = self;
        
#else
        paymentController
        
#else
        paymentController = [[PKPaymentAuthorizationViewController alloc] initWithPaymentRequest:request];
        
        paymentController.delegate = self;
        
//        paymentController.delegate = self;
        
#endif
        [self presentViewController:paymentController animated:YES completion:nil];
        

        
    }
    else
    {
        // Show the user your credit card form
    }

}
@end
