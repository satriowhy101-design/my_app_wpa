import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Satrio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const ProfilPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key, required this.title});

  final String title;

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool _isLiked = false;
  int _jumlahLike = 0;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;

      if (_isLiked) {
        _jumlahLike = 1;
      } else {
        _jumlahLike = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // =========================
            // FOTO PROFIL
            // =========================
            ClipOval(
              child: Image.asset(
                'assets/foto_ku.jpg',
                width: 140,
                height: 140,
                fit: BoxFit.cover,

                // Jika foto gagal ditemukan
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 140,
                    height: 140,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // NAMA
            const Text(
              'Satrio Wisnu Hidayanto',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // NIM
            const Text(
              'NIM : E41251367',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5),

            // JURUSAN
            const Text(
              'Teknik Informatika (TIF) - Politeknik Negeri Jember',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 25),

            // =========================
            // ICON KONTAK
            // =========================
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.deepPurple,
                  size: 30,
                ),
                SizedBox(width: 30),
                Icon(
                  Icons.phone,
                  color: Colors.deepPurple,
                  size: 30,
                ),
                SizedBox(width: 30),
                Icon(
                  Icons.link,
                  color: Colors.deepPurple,
                  size: 30,
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Jumlah Likes:',
              style: TextStyle(fontSize: 16),
            ),

            // =========================
            // LIKE
            // =========================
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    _isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: _isLiked
                        ? Colors.red
                        : Colors.grey,
                    size: 35,
                  ),
                  onPressed: _toggleLike,
                ),

                Text(
                  '$_jumlahLike',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium,
                ),
              ],
            ),
          ],
        ),
      ),

      // =========================
      // TOMBOL +
      // =========================
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleLike,
        tooltip: 'Toggle Like',
        child: const Icon(Icons.add),
      ),
    );
  }
}