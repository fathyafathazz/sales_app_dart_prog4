import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> salesData = [
    {
      "noFaktur": "INV001",
      "tanggal": "2024-10-01",
      "customer": "John Doe",
      "jumlahBarang": 5,
      "totalPenjualan": 150000,
    },
    {
      "noFaktur": "INV002",
      "tanggal": "2024-10-05",
      "customer": "Jane Smith",
      "jumlahBarang": 3,
      "totalPenjualan": 90000,
    },
    {
      "noFaktur": "INV003",
      "tanggal": "2024-10-10",
      "customer": "Alice Johnson",
      "jumlahBarang": 2,
      "totalPenjualan": 60000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Dashboard'),
        backgroundColor: Color(0xFF448AFF),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Center( // Memusatkan isi halaman
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF84F2BC), // Warna latar belakang
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(label: Center(child: Text('No Faktur'))), // Memusatkan teks
                  DataColumn(label: Center(child: Text('Tanggal'))),
                  DataColumn(label: Center(child: Text('Nama Customer'))),
                  DataColumn(label: Center(child: Text('Jumlah Barang'))),
                  DataColumn(label: Center(child: Text('Total Penjualan'))),
                ],
                rows: salesData.map((data) {
                  return DataRow(cells: [
                    DataCell(Text(data["noFaktur"])),
                    DataCell(Text(data["tanggal"])),
                    DataCell(Text(data["customer"])),
                    DataCell(Text(data["jumlahBarang"].toString())),
                    DataCell(Text("Rp ${data["totalPenjualan"]}")),
                  ]);
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
