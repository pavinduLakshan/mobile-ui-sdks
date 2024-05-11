import 'package:flutter_test/flutter_test.dart';
import 'package:asgardeo_fluter/asgardeo_fluter.dart';
import 'package:asgardeo_fluter/asgardeo_fluter_platform_interface.dart';
import 'package:asgardeo_fluter/asgardeo_fluter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAsgardeoFlutterSdkPlatform
    with MockPlatformInterfaceMixin
    implements AsgardeoFlutterSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AsgardeoFlutterSdkPlatform initialPlatform = AsgardeoFlutterSdkPlatform.instance;

  test('$MethodChannelAsgardeoFlutterSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAsgardeoFlutterSdk>());
  });

  test('getPlatformVersion', () async {
    AsgardeoFlutterSdk asgardeoFlutterSdkPlugin = AsgardeoFlutterSdk();
    MockAsgardeoFlutterSdkPlatform fakePlatform = MockAsgardeoFlutterSdkPlatform();
    AsgardeoFlutterSdkPlatform.instance = fakePlatform;

    expect(await asgardeoFlutterSdkPlugin.getPlatformVersion(), '42');
  });
}
