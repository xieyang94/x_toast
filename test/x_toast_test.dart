import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:x_toast/x_toast.dart';

void main() {
  const MethodChannel channel = MethodChannel('x_toast');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await XToast.showToast('42'), '42');
  });
}
