
import 'asgardeo_fluter_platform_interface.dart';

class AsgardeoFlutterSdk {
  Future<String?> getPlatformVersion() {
    return AsgardeoFlutterSdkPlatform.instance.getPlatformVersion();
  }
}
