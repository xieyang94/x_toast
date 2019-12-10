import 'dart:async';

import 'package:flutter/services.dart';

class XToast {
  static const MethodChannel _channel = const MethodChannel('x_toast');

  static Future<Null> showToast(String msg,
      {String duration, int textColor, double textSize}) async {
    _channel.invokeMethod('showToast', {
      "msg": msg,
      "duration": duration,
      "textColor": textColor,
      "textSize": textSize,
    });
    return null;
  }
}
