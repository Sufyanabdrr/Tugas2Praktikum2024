import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data",
            style:
                TextStyle(fontFamily: 'Marvel', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red[800], // Warna merah khas Marvel
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _headerMarvel(),
            _textboxNama(),
            _textboxNIM(),
            _textboxTahun(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _headerMarvel() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Text(
        "Input Data",
        style: TextStyle(
          fontFamily: 'Marvel', // Pastikan font ini tersedia di aplikasi
          fontSize: 24,
          color: Colors.red[800],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Marvel',
            fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Marvel',
            fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Marvel',
            fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[800]!),
        ),
      ),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      child: const Text(
        'Simpan',
        style: TextStyle(fontFamily: 'Marvel', fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[800], // Warna tombol merah khas Marvel
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
