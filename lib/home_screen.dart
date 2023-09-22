import 'package:dailylog/screens/home/widgets/item_note.dart';
import 'package:dailylog/screens/note/note_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  // Fungsi untuk logout
  void _logout(BuildContext context) {
    // Tambahkan kode logout di sini, seperti membersihkan sesi atau melakukan aksi logout lainnya.

    // Setelah logout, navigasikan pengguna kembali ke halaman login.
    Navigator.pushReplacementNamed(context, '/login'); // Pastikan Anda memiliki rute dengan nama '/login' di dalam MaterialApp.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text('Daily Log', style: TextStyle(color:Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          // Tombol Logout
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _logout(context);
            },
            color: Colors.black, // Ganti dengan warna yang sesuai
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: const [
          //ItemNote(color: Colors.green),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.blue),
          //ItemNote(color: Colors.orange),
          //ItemNote(color: Colors.indigo),
          //ItemNote(color: Colors.deepOrange), 
          //ItemNote(color: Colors.purple),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const NoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
