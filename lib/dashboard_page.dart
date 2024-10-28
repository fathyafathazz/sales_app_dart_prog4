import 'package:flutter/material.dart';
import 'produk_detail.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = constraints.maxWidth > 600 ? 3 : 1;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemCount: salesData.length,
              itemBuilder: (context, index) {
                final data = salesData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdukDetailPage(data: data),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'No Faktur: ${data["noFaktur"]}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Tanggal: ${data["tanggal"]}',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Nama Customer: ${data["customer"]}',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Jumlah Barang: ${data["jumlahBarang"]}',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Total Penjualan: Rp ${data["totalPenjualan"]}',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
