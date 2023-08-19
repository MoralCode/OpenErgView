import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'devices_list/devices_bloc_provider.dart';
import 'devices_list/devices_list_view.dart';
import 'erg_grid_view.dart';
import 'erg_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
        title: 'OpenErgView',
        theme: ThemeData(
          // This is the theme of your application.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: ErgPageView());
  }
}
