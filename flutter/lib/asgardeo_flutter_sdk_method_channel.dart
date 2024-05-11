import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'asgardeo_fluter_platform_interface.dart';

/// An implementation of [AsgardeoFlutterSdkPlatform] that uses method channels.
class MethodChannelAsgardeoFlutterSdk extends AsgardeoFlutterSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('asgardeo_fluter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
