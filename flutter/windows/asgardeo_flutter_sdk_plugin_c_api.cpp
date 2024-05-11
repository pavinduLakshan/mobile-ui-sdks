#include "include/asgardeo_fluter/asgardeo_fluter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "asgardeo_fluter_plugin.h"

void AsgardeoFlutterSdkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  asgardeo_fluter::AsgardeoFlutterSdkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
