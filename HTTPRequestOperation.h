//
//  HTTPRequestOperation.h
//  SmartOffice
//
//  Created by Pär Majholm on 2017-01-11.
//  Copyright © 2017 Pär Majholm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPRequestOperation : NSOperation

// input
@property NSURLRequest * request;

// output
@property NSError * error;
@property NSHTTPURLResponse * response;
@property NSData * responseBody;

@end
