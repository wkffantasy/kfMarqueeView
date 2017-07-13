# MarqueeView

use 3 method to set up this view,its frame is a must param.
font and color can be nil.and default fontSize is 17
and default color is RGB color 81/255. 81/255. 81/255.


- (instancetype)initWithFrame:(CGRect)frame
Text:(NSString *)text;

- (instancetype)initWithFrame:(CGRect)frame
Text:(NSString *)text
andTitleFont:(UIFont *)font;

- (instancetype)initWithFrame:(CGRect)frame
Text:(NSString *)text
andTitleFont:(UIFont *)font
andTitleColor:(UIColor *)color;

you can use this method to update you marqueeView

- (void)updateText:(NSString *)text
andTitleFont:(UIFont *)font
andTitleColor:(UIColor *)color;

if you find some bugs ,please tell,my email address is wkffantasy@foxmail.com
