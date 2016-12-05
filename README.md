# Responder Dispatch Event
dispatch events between response chain 


## How To Get Started

send event from cell
```` objective-c
- (void)handelButtonEvent:(UIButton *)sender {
    [self sendEventWithName:kEventName userInfo:@{@"title" : [sender titleForState:UIControlStateNormal]}];
}
````

cell's next responders will receive event

code in view controller
```` objective-c
- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo {
    if ([eventName isEqualToString:kEventName]) {
        self.title = userInfo[@"title"];
        NSLog(@"ViewController - button click : %@", userInfo[@"title"]);
    }
    return YES;
}
````

code in view navigation controller
```` objective-c
- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo {
    if ([eventName isEqualToString:kEventName]) {
        NSLog(@"NavigationViewController - button click : %@", userInfo[@"title"]);
    }
    return YES;
}
````

## Communication

If you found a bug, and can provide steps to reliably reproduce it, open an issue.
If you have a feature request, open an issue.
If you want to contribute, submit a pull request


## License

Responder Dispatch Event is released under the MIT license. See LICENSE for details.
