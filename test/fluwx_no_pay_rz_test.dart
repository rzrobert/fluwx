import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluwx_no_pay_rz/fluwx_no_pay_rz.dart';

void main() {
  const MethodChannel channel = MethodChannel('fluwx_no_pay_rz');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FluwxNoPayRz.platformVersion, '42');
  });
}
