import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unilo_app/app/app.bottomsheets.dart';
import 'package:unilo_app/app/app.dialogs.dart';
import 'package:unilo_app/app/app.locator.dart';
import 'package:unilo_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:unilo_app/ui/common/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
 Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          theme: AppThemes.lightTheme,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        );
      },
    );
  }
}
