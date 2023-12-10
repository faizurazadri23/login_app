import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _StateLogin();
}

class _StateLogin extends State<LoginScreen> {
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 250,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/ellipse_a.png',
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    right: 0.0,
                    child: Image.asset(
                      'assets/ellipse_b.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 50.0,
                    left: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Login Account',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: Image.asset('assets/ic_user.png'),
                            )
                          ],
                        ),
                        const Text(
                          'Welcome back UrangCoding !',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 0.0,
                      right: 0.0,
                      top: 170,
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Mini',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 60,
                              ),
                            ),
                            Text(
                              'Shop',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 198, 0),
                                fontSize: 60,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Enter email',
                    labelText: 'Enter email',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    labelText: 'Enter password',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 10),
              alignment: Alignment.topRight,
              child: const Text(
                'Forgot Password ?',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 198, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      //aksi ketika klik tombol login
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: Divider(
                    thickness: 0.6,
                    color: Color.fromARGB(255, 163, 151, 151),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Or sign up with',
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Color.fromARGB(255, 163, 151, 151),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 75, height: 48,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    elevation: 5,
                    child: Image.asset('assets/ic_google.png'),
                  ),),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    width: 75, height: 48,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      elevation: 5,
                      child: Image.asset('assets/ic_facebook.png'),
                    ),),
                  SizedBox(
                    width: 75, height: 48,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      elevation: 5,
                      child: Image.asset('assets/ic_apple.png'),
                    ),)
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 35),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Not register yet?', style: TextStyle(fontSize: 13, color: Color.fromARGB(
                      255, 99, 99, 99)),),
                  Padding(padding: EdgeInsets.only(left: 5),child: Text('Create Account', style: TextStyle(fontSize: 13,color: Color.fromARGB(
                      255, 12, 31, 34), fontWeight: FontWeight.bold),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
