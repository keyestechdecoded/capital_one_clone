import 'package:capital_one_clone/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _remeberMe = false;
  bool _faceID = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                hintText: 'Username',
                prefixIcon: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                hintText: 'Password',
                prefixIcon: Icon(
                  FontAwesomeIcons.lock,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch.adaptive(
                      activeColor: const Color(0xFF0D74AF),
                      inactiveTrackColor: Colors.grey,
                      value: _remeberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _remeberMe = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6E7C86),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch.adaptive(
                      activeColor: const Color(0xFF0D74AF),
                      inactiveTrackColor: Colors.grey,
                      value: _faceID,
                      onChanged: (bool? value) {
                        setState(() {
                          _faceID = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Face ID',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6E7C86),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Sign In',
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15)),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Username or Password',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: CapOneColors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Set Up Online Access',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: CapOneColors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
