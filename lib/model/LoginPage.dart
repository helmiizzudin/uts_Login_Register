import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  void showSuccessDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Berhasil'),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email Anda', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password Anda', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
            onPressed: () {
              showSuccessDialog(context, 'Login berhasil!');
              },
              child: Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Belum punya akun ? Daftar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}