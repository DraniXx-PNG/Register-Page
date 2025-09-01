import 'package:flutter/material.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Foto profil dari asset
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('aset/image/sae.jpg'),
            ),
            const SizedBox(height: 10),
            const Text(
              "Rajendra Ghasia Demarco",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Dranix@email.com",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Card info
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.blueAccent),
                title: const Text("Nomor Telepon"),
                subtitle: const Text("+62 812 3456 7890"),
                trailing: IconButton(
                  icon: const Icon(Icons.edit, color: Colors.grey),
                  onPressed: () {},
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.location_on, color: Colors.blueAccent),
                title: const Text("Alamat"),
                subtitle: const Text("Kudus"),
                trailing: IconButton(
                  icon: const Icon(Icons.edit, color: Colors.grey),
                  onPressed: () {},
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.info, color: Colors.blueAccent),
                title: const Text("Tentang Saya"),
                subtitle: const Text("Saya seorang developer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
