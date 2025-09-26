import 'package:anime_app/anime_app.dart';
import 'package:anime_app/core/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  final AppRouter appRouter = AppRouter();
  runApp(AnimeApp(appRouter: appRouter));
}
