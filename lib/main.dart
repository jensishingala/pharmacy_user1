import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_user/routing/app_route.dart';
import 'package:grocery_app_user/themes/app_theme.dart';
import 'constants/constants.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyAIfm1b-KjKYg_ErhnANMXIl43eagiGB0s',
        appId: '1:908686828963:android:8cb4a45647cc9346922616',
        messagingSenderId: '908686828963',
        projectId: 'pharmacy-management-75658',
        storageBucket: 'pharmacy-management-75658.appspot.com'
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: AppConstant.splashView,
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
