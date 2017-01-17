//
//  HTTPRequestOperation.m
//  SmartOffice
//
//  Created by Pär Majholm on 2017-01-11.
//  Copyright © 2017 Pär Majholm. All rights reserved.
//

#import "HTTPRequestOperation.h"

@implementation HTTPRequestOperation

- (void)main
{
    dispatch_semaphore_t requestFinishedSemaphore = dispatch_semaphore_create(0);
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:self.request completionHandler:
     ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
         self.error = error;
         self.response = (NSHTTPURLResponse *)response;
         self.responseBody = data;
         
         dispatch_semaphore_signal(requestFinishedSemaphore);
     }] resume];
    
    dispatch_semaphore_wait(requestFinishedSemaphore, DISPATCH_TIME_FOREVER);
}

@end
