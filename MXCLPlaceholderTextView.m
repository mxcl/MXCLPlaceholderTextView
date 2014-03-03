#import "MXCLPlaceholderTextView.h"


@implementation MXCLPlaceholderTextView
@synthesize placeholder;

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(mxclTextDidChange) name:UITextViewTextDidChangeNotification object:nil];

    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    if (self.text.length > 0)
        return;

    rect = UIEdgeInsetsInsetRect(self.bounds, self.contentInset);
    rect = UIEdgeInsetsInsetRect(self.bounds, UIEdgeInsetsMake(8, 8.5, 8, 8.5));

    id attrs = @{
        NSFontAttributeName: self.font,
        NSForegroundColorAttributeName: [UIColor colorWithRed:0 green:0 blue:0.098 alpha:0.22],
        NSKernAttributeName: @0.1
    };
    [self.placeholder drawInRect:rect withAttributes:attrs];

}

- (void)mxclTextDidChange {
    [self setNeedsDisplay];
}
@end
