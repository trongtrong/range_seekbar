import 'package:flutter/cupertino.dart';
import 'package:range_seekbar/render_range_seekbar.dart';

class RangeSeekBar extends LeafRenderObjectWidget {
  final Color barColor;
  final Color thumbColor;
  final double thumbSize;

  RangeSeekBar({Key? key, required this.barColor, required this.thumbColor, this.thumbSize = 20}) : super(key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderRangeSeekBar(barColor: barColor, thumbColor: thumbColor, thumbSize: thumbSize);
  }

  @override
  void updateRenderObject(BuildContext context, RenderRangeSeekBar renderObject) {
    renderObject
      ..barColor = barColor
      ..thumbColor = thumbColor
      ..thumbSize = thumbSize;
  }
}
