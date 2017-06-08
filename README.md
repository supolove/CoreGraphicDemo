# CoreGraphicDemo
使用CoreGraphic底层绘制视图例子

使用方法绘制图形
CGContextDrawPath(contex, kCGPathStroke);
CGPathDrawingMode path绘制模式枚举说明
kCGPathFill, 填充整个view
kCGPathEOFill, 用奇偶规则（多条路径交叉时，奇数交叉填充，偶交叉不填充）
kCGPathStroke, 只绘制边框
kCGPathFillStroke, 绘制边框和填充
kCGPathEOFillStroke 奇偶填充并绘制边框
