import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/widgets/custom_elevatedButton.dart';

//import 'login_page.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f6fd),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'lib/assets/images/logo.png',
            height: 350,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'RepoPharma',
          style: TextStyle(
              fontFamily: 'Kalam-Regular',
              fontSize: 35,
              color: Color(0xffFC9599)),
        ),
        const SizedBox(
          height: 35,
        ),
        CustomElevatedButton(
          text: 'Go',
          getPage: '/LoginPage',
          width: 120,
        ),
        const SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
