
import 'ns_dashboard_demo_platform_interface.dart';

class NsDashboardDemo {
  Future<String?> getPlatformVersion() {
    return NsDashboardDemoPlatform.instance.getPlatformVersion();
  }
}
