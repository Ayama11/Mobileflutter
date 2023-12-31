import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/pages/register.dart';
import '../help/const.dart';
import '../widgets/custom_elevatedButton.dart';
import '../widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4f6fd),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'lib/assets/images/login1.png',
            height: 260,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: Card(
              elevation: 14,
              color: kCardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'PTSerif-Regular',
                        fontSize: 35,
                        color: kFontColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'E-Phone',
                      typeKey: TextInputType.number,
                      icons: Icons.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'Password',
                      icons: Icons.lock_outline,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomElevatedButton(
                      getPage: '/NavigationMuneBottom',
                      text: 'Login',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont have an account ? ',
                style: TextStyle(
                  fontFamily: 'PPlayfairDisplay-SemiBoldItalic',
                  fontSize: 18,
                  color: kFontColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(
                    const RegisterPage(),
                  );
                },
                child: const Text(
                  'Register ',
                  style: TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 22,
                    color: Color(0xffe73fe4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
