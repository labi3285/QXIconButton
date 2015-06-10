# QXIconButton
an easy use up-icon below-label button.

you can just use it with:
```objc
    QXBtnIcon *icon = [QXBtnIcon iconWithIcon:[UIImage imageNamed:@"icon_00"] title:@"天天跑酷"];
    [self.view addSubview:icon];
```
 changing in frame only affect the center , not affect the proportion, font size will automaticly adapt the size.
