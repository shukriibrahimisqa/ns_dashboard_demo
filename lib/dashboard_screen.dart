import 'package:flutter/material.dart';
import 'package:ns_dashboard_demo/login_screen.dart';
import 'package:ns_widgets_demo/cards/ns_cards.dart';
import 'package:ns_widgets_demo/containers/ns_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          nsContainer(),
          nsCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    );
  }
}
