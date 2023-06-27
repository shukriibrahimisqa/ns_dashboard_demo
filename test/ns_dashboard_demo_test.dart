import 'package:flutter_test/flutter_test.dart';
import 'package:ns_dashboard_demo/ns_dashboard_demo.dart';
import 'package:ns_dashboard_demo/ns_dashboard_demo_platform_interface.dart';
import 'package:ns_dashboard_demo/ns_dashboard_demo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNsDashboardDemoPlatform
    with MockPlatformInterfaceMixin
    implements NsDashboardDemoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NsDashboardDemoPlatform initialPlatform = NsDashboardDemoPlatform.instance;

  test('$MethodChannelNsDashboardDemo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNsDashboardDemo>());
  });

  test('getPlatformVersion', () async {
    NsDashboardDemo nsDashboardDemoPlugin = NsDashboardDemo();
    MockNsDashboardDemoPlatform fakePlatform = MockNsDashboardDemoPlatform();
    NsDashboardDemoPlatform.instance = fakePlatform;

    expect(await nsDashboardDemoPlugin.getPlatformVersion(), '42');
  });
}
