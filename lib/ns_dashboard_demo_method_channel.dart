import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ns_dashboard_demo_platform_interface.dart';

/// An implementation of [NsDashboardDemoPlatform] that uses method channels.
class MethodChannelNsDashboardDemo extends NsDashboardDemoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ns_dashboard_demo');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
