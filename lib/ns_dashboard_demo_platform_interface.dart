import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ns_dashboard_demo_method_channel.dart';

abstract class NsDashboardDemoPlatform extends PlatformInterface {
  /// Constructs a NsDashboardDemoPlatform.
  NsDashboardDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static NsDashboardDemoPlatform _instance = MethodChannelNsDashboardDemo();

  /// The default instance of [NsDashboardDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelNsDashboardDemo].
  static NsDashboardDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NsDashboardDemoPlatform] when
  /// they register themselves.
  static set instance(NsDashboardDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
