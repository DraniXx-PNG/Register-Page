import 'package:flutter/material.dart';
import 'package:latihan1/register_page.dart';
import 'package:latihan1/widget/widget_button.dart';
import 'package:latihan1/widget/widget_controller.dart';
import 'caculator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Declare TextEditingController for username and password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Helper function to show a SnackBar
  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2), // How long the snackbar is visible
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to our first app!", style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),
            Text("Please using your email and password!"),
            SizedBox(height: 20,),
            Center(
              child: Image.asset('aset/image/sae.jpg', 
                width: 100,
                height: 100,
              ),
            ),
            Container(
             margin: EdgeInsets.only(top: 20, bottom: 20),
             child: MyTextField(textEditingController: _usernameController, labelText: "Input Username", IsPassword: false,),
            ),
            Container(
             margin: EdgeInsets.only(top: 20, bottom: 20),
             child: MyTextField(textEditingController: _passwordController, labelText: "Input Password", IsPassword: true),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: CustomButton(text: "Login", textColor: Colors.blue, onPressed: (){
                   final String username = _usernameController.text;
                    final String password = _passwordController.text;

                    if (username == 'ghasia' && password == 'admin123') {
                      _showSnackBar('Login successful!', Colors.green);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCalcu()));
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    } else {
                      _showSnackBar('Invalid username or password.', Colors.red);
                    }
                }),
              )
            ),
            Center(
              child: CustomButton(text: "Register", textColor: Colors.red, onPressed: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}