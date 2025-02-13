import 'package:flutter/material.dart';
import 'package:ngupiid/ui/large/login.dart';
import 'package:ngupiid/ui/login.dart';
import 'package:ngupiid/ui/small/loginSmallView.dart';
import 'package:provider/provider.dart';
import 'package:ngupiid/provider/index_nav_provider.dart';
import 'package:ngupiid/asset/helper/colors.dart';
import 'package:ngupiid/provider/screen_size_provider.dart';
import 'package:ngupiid/ui/responsiveScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IndexNavProvider(),
        ),
        ChangeNotifierProvider(create: (_) => ScreenSizeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenProvider = Provider.of<ScreenSizeProvider>(context);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: BrownPalette.baseBrown),
          primarySwatch: BrownPalette.brown, // Use the brown MaterialColor
          primaryColor: BrownPalette.brown500, // Primary color
          scaffoldBackgroundColor: BrownPalette.brown50, // Background color

          useMaterial3: true,
        ),
        home: const ScreenWrapper());
  }
}

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({super.key});
  @override
  Widget build(BuildContext context) {
    final screenProvider =
        Provider.of<ScreenSizeProvider>(context, listen: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        screenProvider
            .updateSize(Size(constraints.maxWidth, constraints.maxHeight));
        return const Responsivescreen();
      },
    );
  }
}
