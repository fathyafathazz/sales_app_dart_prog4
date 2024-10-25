import 'package:flutter/material.dart';

class UpdateSalesPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  // Data yang akan diisi ke dalam form
  final String noFaktur = "INV001";
  final String tanggal = "2024-10-01";
  final String customer = "John Doe";
  final int jumlahBarang = 5;
  final int totalPenjualan = 150000;

  @override
  Widget build(BuildContext context) {
    // Menggunakan controller untuk setiap TextFormField
    final TextEditingController noFakturController = TextEditingController(text: noFaktur);
    final TextEditingController tanggalController = TextEditingController(text: tanggal);
    final TextEditingController customerController = TextEditingController(text: customer);
    final TextEditingController jumlahBarangController = TextEditingController(text: jumlahBarang.toString());
    final TextEditingController totalPenjualanController = TextEditingController(text: totalPenjualan.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Sales'),
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
                      'Update Sales',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF448AFF), // Judul warna biru
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: noFakturController,
                      decoration: InputDecoration(labelText: 'No Faktur'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter No Faktur';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tanggalController,
                      decoration: InputDecoration(labelText: 'Tanggal'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Tanggal';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: customerController,
                      decoration: InputDecoration(labelText: 'Nama Customer'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Nama Customer';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: jumlahBarangController,
                      decoration: InputDecoration(labelText: 'Jumlah Barang'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Jumlah Barang';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: totalPenjualanController,
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
                          // Update data
                          Navigator.pop(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF84F2BC), // Warna background button Update
                      ),
                      child: Text('Update'),
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
