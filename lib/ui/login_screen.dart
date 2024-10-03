import 'package:flutter/material.dart';
import 'package:groceries/ui/home_screen.dart';

import '../utils/asset_paths.dart';
import 'nav_bar_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AssetPaths.loginScreenImg,
                width: double.infinity,
                height: 290,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Get your groceries \n with nectar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      wordSpacing: 0.3),
                  // style:Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            AssetPaths.bdFlag,
                            width: 32,
                            height: 32,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '+880',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(10),
                          ),
                        ),
                        backgroundColor: Colors.green,
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  const NavBarScreen(),
                            ),);
                      },
                      child: const Text(
                        "LogIn",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Or connect with social media',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Continue with Facebook',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[500],
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.g_mobiledata_rounded,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
