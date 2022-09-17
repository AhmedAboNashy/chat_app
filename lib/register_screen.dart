import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = 'home';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool securePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/background_pattern.png'),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Create Account'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(13),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .4),
                TextFormField(
                  decoration: InputDecoration(label: Text('Full Name')),
                ),
                TextFormField(
                  decoration: InputDecoration(label: Text('User Name')),
                ),
                TextFormField(
                  decoration: InputDecoration(label: Text('Email Addres')),
                ),
                TextFormField(
                  obscureText: securePassword,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      suffixIcon: InkWell(
                          onTap: () {
                            securePassword = !securePassword;
                            setState(() {});
                          },
                          child: securePassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off))),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
