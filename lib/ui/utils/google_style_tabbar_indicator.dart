import 'package:flutter/material.dart';

enum GoogleStyleIndicatorSize {
  full,
  normal,
  tiny,
}

class GoogleStyleIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final GoogleStyleIndicatorSize indicatorSize;

  const GoogleStyleIndicator({
    @required this.indicatorSize,
    @required this.indicatorHeight,
    @required this.indicatorColor,
  })  : assert(indicatorSize != null),
        assert(indicatorHeight != null),
        assert(indicatorColor != null);

  @override
  _GoogleStyleIndicatorPainter createBoxPainter([VoidCallback onChanged]) {
    return new _GoogleStyleIndicatorPainter(
      decoration: this,
      onChanged: onChanged,
    );
  }
}

class _GoogleStyleIndicatorPainter extends BoxPainter {
  final GoogleStyleIndicator decoration;

  _GoogleStyleIndicatorPainter({
    @required this.decoration,
    @required VoidCallback onChanged,
  })  : assert(decoration != null),
        assert(onChanged != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    double dy = configuration.size.height - decoration.indicatorHeight;
    double height = decoration.indicatorHeight;
    double dx = 0.0;
    double width = 0.0;
    if (decoration.indicatorSize == GoogleStyleIndicatorSize.full) {
      dx = offset.dx;
      width = configuration.size.width;
    } else if (decoration.indicatorSize == GoogleStyleIndicatorSize.normal) {
      dx = offset.dx + (configuration.size.width / 4);
      width = configuration.size.width / 2;
    } else if (decoration.indicatorSize == GoogleStyleIndicatorSize.tiny) {
      dx = offset.dx + configuration.size.width / 2 - 8;
      width = 16;
    }
    Rect rect = Offset(dx, dy) & Size(width, height);

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topLeft: Radius.circular(decoration.indicatorHeight),
        topRight: Radius.circular(decoration.indicatorHeight),
      ),
      paint,
    );
  }
}
