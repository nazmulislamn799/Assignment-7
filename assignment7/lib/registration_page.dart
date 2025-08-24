import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget 
{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text("Register"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular( 10)
                ), 
                
                labelText: 'Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                 border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular( 10)
                ),
                
                labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                 border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular( 10)
                ),
                labelText: 'Password'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                // Perform registration logic
              },
              child: Text('Register',
              
               style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
              
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Already have an account? Login'),
            )
          ],
        ),
      ),
    );
  }
}
