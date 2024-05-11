import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:asgardeo_fluter/asgardeo_fluter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAsgardeoFlutterSdk platform = MethodChannelAsgardeoFlutterSdk();
  const MethodChannel channel = MethodChannel('asgardeo_fluter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
