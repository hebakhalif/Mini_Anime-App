import 'package:anime_app/core/app_router.dart';
import 'package:anime_app/core/router.dart';
import 'package:flutter/material.dart';

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.viewRow,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
