import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color(0xFF448AFF),
        automaticallyImplyLeading: false, // Menghapus tombol kembali
      ),
      body: Center( // Memusatkan isi halaman
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 4, // Efek bayangan pada kartu
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xFF448AFF)), // Garis tepi warna biru
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Menggunakan ukuran minimal
                children: <Widget>[
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF448AFF), // Judul warna biru
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: true, // Menyembunyikan input password
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi aksi login
                      String email = emailController.text;
                      String password = passwordController.text;

                      // Cek email dan password (misalnya, panggil API di sini)
                      if (email == 'admin@example.com' && password == 'password') {
                        // Jika login berhasil, arahkan ke dashboard
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      } else {
                        // Tampilkan pesan kesalahan
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Invalid email or password')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF84F2BC), // Warna background button
                    ),
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
