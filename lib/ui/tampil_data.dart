import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Perkenalan",
          style: TextStyle(
            fontFamily: 'Marvel', // Font Marvel
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red[800], // Warna merah khas Marvel
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerMarvel(),
            const SizedBox(height: 20),
            _tampilkanData("Nama", nama),
            _tampilkanData("NIM", nim),
            _tampilkanData("Umur", "$umur tahun"),
          ],
        ),
      ),
    );
  }

  _headerMarvel() {
    return Text(
      "Perkenalan",
      style: TextStyle(
        fontFamily: 'Marvel', // Font untuk nuansa Marvel
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.red[800], // Warna Marvel
      ),
    );
  }

  _tampilkanData(String label, String data) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$label: ",
              style: TextStyle(
                fontFamily: 'Marvel',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.red[800], // Warna merah khas Marvel
              ),
            ),
            TextSpan(
              text: data,
              style: const TextStyle(
                fontFamily: 'Marvel',
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
