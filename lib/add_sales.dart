import 'package:flutter/material.dart';

class AddSalesPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Sales'),
        backgroundColor: Color(0xFF448AFF),
      ),
      body: Center( // Memusatkan isi halaman
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            elevation: 4, // Efek bayangan pada kartu
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xFF448AFF)), // Garis tepi warna biru
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Menggunakan ukuran minimal
                  children: [
                    Text(
                      'Add Sales',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF448AFF), // Judul warna biru
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'No Faktur'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter No Faktur';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Tanggal'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Tanggal';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Nama Customer'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Nama Customer';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Jumlah Barang'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Jumlah Barang';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Total Penjualan'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Total Penjualan';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Simpan data
                          Navigator.pop(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF84F2BC), // Warna background button Simpan
                      ),
                      child: Text('Simpan'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
