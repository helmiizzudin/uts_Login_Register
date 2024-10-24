import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // profil
          Column(
            children: [
              SizedBox(height: 100),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/naruto.jpg'), // Ganti dengan gambar profil
                ),
              ),
              SizedBox(height: 10),
              Text(
                'HELMI IZZUDDIN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // informasi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Informasi Profil',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Divider(color: Colors.grey),
                        Text('Nama: Helmi Izzuddin'),
                        SizedBox(height: 10),
                        Text('NIM: 2109'),
                        SizedBox(height: 10),
                        Text('Kelas: 2D'),
                        SizedBox(height: 10),
                        Text('Prodi: TRPL'),
                        SizedBox(height: 10),
                        Text('Alamat: Ketapang-Banyuwangi'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Tombol Logout
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/login'); // Kembali ke login
                },
                icon: Icon(Icons.logout),
                label: Text('Logout'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
