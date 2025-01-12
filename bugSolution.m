The solution involves removing the explicit retain on `myString` by removing the `[[NSString alloc] init...` call. Instead, use the `initWithString:` method with autorelease:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, retain) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    [myString release];
    [super dealloc];
}
@end

// ...in some method...
MyClass *myObject = [[MyClass alloc] init];
myObject.myString = [NSString stringWithString:@"Hello"]; //Corrected line
// ... later ...
[myObject release];
```

This approach utilizes the autorelease pool mechanism.  `[NSString stringWithString:@"Hello"];` creates an autoreleased string, which eliminates the extra retain that caused the double release issue. Using ARC is the preferred approach in modern Objective-C to prevent this issue altogether.