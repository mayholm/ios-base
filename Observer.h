
#import <Foundation/Foundation.h>

typedef void (^ObserverCallback)(NSDictionary<NSString *, id> * change);

@interface Observer : NSObject

- (instancetype)initWithObject:(NSObject *)object
                       keyPath:(NSString *)keyPath
                       options:(NSKeyValueObservingOptions)options
                      callback:(ObserverCallback)callback;

- (instancetype)initWithObject:(NSObject *)object
                       keyPath:(NSString *)keyPath
                       options:(NSKeyValueObservingOptions)options
                        target:(NSObject *)target
                      selector:(SEL)selector;

@end
