
#import <Foundation/Foundation.h>

@interface HTTPRequestOperation : NSOperation

// input
@property NSURLRequest * request;

// output
@property NSError * error;
@property NSHTTPURLResponse * response;
@property NSData * responseBody;

@end
