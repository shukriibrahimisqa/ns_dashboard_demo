import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ns_dashboard_demo/ns_dashboard_demo_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelNsDashboardDemo platform = MethodChannelNsDashboardDemo();
  const MethodChannel channel = MethodChannel('ns_dashboard_demo');

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
