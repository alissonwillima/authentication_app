import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => const OnboardingPage(),
        'signuppage': (context) => const SignUpPage(),
        'loginpage': (context) => const LoginPage(),
        'register': (context) => const SignUpPage(),
      },
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorSchemeSeed: Colors.redAccent,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 370,
              child: Image.asset('assets/sammy.png'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 28, 32, 32),
              child: Text(
                'Learn with pleasure with us, wherever you are!',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signuppage');
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFF9564D),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: const SizedBox(
                  height: 52,
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'loginpage');
                },
                child: Container(
                  height: 52,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFF9564D),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/chevron-left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, top: 56, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign up and start learning!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 217, bottom: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Type your name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Type your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 48),
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'Type your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size.fromHeight(52),
                  backgroundColor: Colors.red.shade400,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                onPressed: () {
                  print('Sign Up');
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFFF5F5F5),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Have an account? ',
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(color: Colors.red),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, 'login');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/chevron-left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, top: 56, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 183),
                child: Text(
                  "Let's sign you in!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Type your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'Type your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Esqueceu a senha?');
                },
                child: const Text(
                  'Forget your password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48, bottom: 16),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginpage');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFF9564D),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: const SizedBox(
                    height: 52,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFF5F5F5),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(166, 56),
                      backgroundColor: Colors.grey.shade200,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print('Google');
                    },
                    child: Image.asset(
                      'assets/google.png',
                      height: 24.0,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(166, 56),
                      backgroundColor: Colors.grey.shade200,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print('Apple');
                    },
                    child: Image.asset(
                      'assets/apple.png',
                      height: 24.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Don’t have account? ',
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(color: Colors.red),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, 'register');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
