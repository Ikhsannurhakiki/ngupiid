import 'package:flutter/material.dart';
import 'package:ngupiid/ui/small/loginSmallView.dart';
import 'package:provider/provider.dart';
import 'package:ngupiid/provider/screen_size_provider.dart';
import 'package:ngupiid/ui/large/login.dart';

class Responsivescreen extends StatelessWidget {
  const Responsivescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenProvider = Provider.of<ScreenSizeProvider>(context);

    return Scaffold(
      body: Center(
        child: screenProvider.isMobile()
            ? const LoginScreenSmall()
            : screenProvider.isTablet()
                ? const LoginScreenLarge()
                : const LoginScreenLarge(),
      ),
    );
  }
}
