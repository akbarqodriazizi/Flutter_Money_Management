import 'package:flutter/material.dart';
import 'package:uas/pages/main_page.dart';
import 'constant.dart';

void main() {
  runApp(const Home_Pages());
}

class Home_Pages extends StatelessWidget {
  const Home_Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome ",
                style: textTextStyle.copyWith(fontSize: 30, fontWeight: Bold),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "Smart To Control Your Money",
                style: secondaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: Bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "aziziakbarqodri12@gmail.com",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.4)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17)),
                      )),
                  SizedBox(height: 15),

                  //Pasword
                  Text(
                    "Password",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: Bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 17),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                    child: ElevatedButton(
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
