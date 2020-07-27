import 'package:flutter/material.dart';
import 'package:flutter_app_login_ui/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final topBorderRadius = Radius.circular(50);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(
                  0.4,
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: 40,
                      left: 20,
                      bottom: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeAnimation(
                  0.5,
                  Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: screenHeight * 0.70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: topBorderRadius,
                            topRight: topBorderRadius,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: screenHeight * 0.10,
                            ),
                            FadeAnimation(
                              0.6,
                              _textFields(screenWidth: screenWidth),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                              0.7,
                              _forgotPassword(),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                              0.8,
                              _loginButton(screenWidth: screenWidth),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                              0.9,
                              Text(
                                "Continue with social media",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                              1.0,
                              _socialMediaBtns(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFields({@required double screenWidth}) {
    return Container(
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.deepOrangeAccent.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          SimpleTextField(
            textEditingController: emailController,
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            onChanged: (val) => print(val),
            hintText: "Email or Phone number",
            obscureText: false,
          ),
          Divider(
            thickness: 1.0,
          ),
          SimpleTextField(
            textEditingController: passwordController,
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            onChanged: (pwd) {
              final int pwdLength = pwd.length;
              if (pwdLength > 0) {
                print(pwd.substring(0, 1) + "********************");
              }
            },
            hintText: "Password",
            obscureText: true,
          ),
        ],
      ),
    );
  }

  Widget _forgotPassword() {
    return SimpleActionText(
      text: "Forgot password?",
      fontSize: 15,
      color: Colors.grey,
      onTap: () {
        print("Tapped forgot password...");
      },
    );
  }

  Widget _loginButton({@required double screenWidth}) {
    return SimpleRoundedButton(
      onPressed: () {
        final email = emailController.text;
        final password =
            passwordController.text.substring(0, 1) + "****************";

        print("Signing in...");
        print("Email/Phone: $email");
        print("Password: $password");
      },
      text: "Login",
      width: screenWidth * 0.6,
      yPadding: 15,
      color: Colors.deepOrange,
    );
  }

  Widget _socialMediaBtns() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: SimpleRoundedButton(
            onPressed: () => print("Facebook login..."),
            text: "Facebook",
            color: Color(0xff2896F3),
            yPadding: 15,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: SimpleRoundedButton(
            onPressed: () => print("Github login..."),
            text: "Github",
            color: Colors.black,
            yPadding: 15,
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
