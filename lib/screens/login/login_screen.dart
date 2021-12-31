import 'package:capital_one_clone/config/styles.dart';
import 'package:capital_one_clone/screens/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CapOneColors.blue,
        title: const Image(
          height: 30,
          image: AssetImage(
              'assets/images/NicePng_capital-one-logo-png_638693.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Icon(Icons.face),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Face ID',
                  style: appBarText,
                ),
              ],
            ),
          )
        ],
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.questionCircle,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Help',
                  style: appBarText,
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Switch Profile',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: CapOneColors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const LoginForm(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Product Offerings',
                      style: loginScreenText,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Security & Privacy',
                      style: loginScreenText,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Espanol',
                      style: loginScreenText,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
