import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:workshala_csi/theme/theme_helper.dart';
import 'package:workshala_csi/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);


  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'workshala_csi',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.profileScreen,
      routes: AppRoutes.routes,
    );
  }
}
