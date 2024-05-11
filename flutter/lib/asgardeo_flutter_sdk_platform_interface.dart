import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'asgardeo_fluter_method_channel.dart';

abstract class AsgardeoFlutterSdkPlatform extends PlatformInterface {
  /// Constructs a AsgardeoFlutterSdkPlatform.
  AsgardeoFlutterSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static AsgardeoFlutterSdkPlatform _instance = MethodChannelAsgardeoFlutterSdk();

  /// The default instance of [AsgardeoFlutterSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelAsgardeoFlutterSdk].
  static AsgardeoFlutterSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AsgardeoFlutterSdkPlatform] when
  /// they register themselves.
  static set instance(AsgardeoFlutterSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
