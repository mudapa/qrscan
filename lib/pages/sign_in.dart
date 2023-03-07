import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/providers/auth_provider.dart';
import 'package:qrscan/widgets/button/button.dart';
import 'package:qrscan/widgets/text_box.dart';
import 'package:qrscan/widgets/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    handleSignIn() async {
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: secondColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            content: const Text(
              'Login Success',
              textAlign: TextAlign.center,
            ),
          ),
        );
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            content: const Text(
              'Login Fail!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          header(),
          TextBox(
            text: 'Email Address',
            hintText: 'Your Email Address',
            controller: emailController,
            isPassword: false,
          ),
          TextBox(
            text: 'Password',
            hintText: 'Your Password',
            controller: passwordController,
            isPassword: true,
          ),
          const SizedBox(height: 24),
          Button(
            text: 'Login',
            onPressed: handleSignIn,
          ),
        ],
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
