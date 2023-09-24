import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "Produk":
            "SKINTIFIC 2persen Salicylic Acid Acne Spot Treatment Gel 12 hours cure acne 10g",
        "harga": "Rp 84.000",
        "imageUrl":
            "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//116/MTA-38359889/skintific_skintific_salicylic_acid_acne_spot_treatment_gel_12_hours_cure_acne_10g_anti_acne_full01_b943c88d.jpg"
      },
      {
        "Produk": "SKINTIFIC 5x Ceramide Serum Sunscreen spf50+",
        "harga": "Rp 105.000",
        "imageUrl":
            "https://s3.bukalapak.com/img/36452095003/s-330-330/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 5X Ceramide Barrier Repair Moisture",
        "harga": "Rp 139.000",
        "imageUrl":
            "https://s3.bukalapak.com/img/30366209992/s-330-330/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 5X Ceramide Soothing Toner 80ml",
        "harga": "Rp 105.000",
        "imageUrl":
            "https://s0.bukalapak.com/img/57342085003/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 5% AHA BHA PHA Exfoliating Toner - 80ml",
        "harga": "Rp 105.000",
        "imageUrl":
            "https://s4.bukalapak.com/img/41583985003/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 5X Ceramide Barrier Repair Serum 20ml BPOM",
        "harga": "Rp 105.000",
        "imageUrl":
            "https://s1.bukalapak.com/img/12909985003/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC Mugwort Clay Mask Stick Mask Cleansing Clay 40g",
        "harga": "Rp 75.000",
        "imageUrl":
            "https://s2.bukalapak.com/img/73753743103/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 10% Niacinamide Brightening Serum 20ml",
        "harga": "Rp 112.000",
        "imageUrl":
            "https://s0.bukalapak.com/img/52107266992/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC-5x Ceramide Low pH Cleanser Gentle Cleanser 80ml",
        "harga": "Rp 89.000",
        "imageUrl":
            "https://s1.bukalapak.com/img/12575158792/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC SYMWHITE 377 Dark Spot Eraser Serum",
        "harga": "Rp 117.000",
        "imageUrl":
            "https://s3.bukalapak.com/img/88219124992/large/data.jpeg.webp"
      },
      {
        "Produk":
            "SKINTIFIC MSH NIACINAMIDE BRIGHTENING MOISTURIZER GLOWING MOIST GEL",
        "harga": "Rp 115.000",
        "imageUrl":
            "https://s1.bukalapak.com/img/18378792103/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 2% Salicylic Acid Anti Acne Serum 20ml ",
        "harga": "Rp 112.000",
        "imageUrl":
            "https://s1.bukalapak.com/img/16061095003/large/data.jpeg.webp"
      },
      {
        "Produk": "SKINTIFIC 10% VITAMIN C BRIGHTENING GLOW SERUM",
        "harga": "Rp 122.000",
        "imageUrl":
            "https://s0.bukalapak.com/img/07312845103/large/data.png.webp"
      },
      {
        "Produk":
            "SKINTIFIC All Day Light Sunscreen Mist SPF50 PA+++ Anti UV/Body Spray",
        "harga": "Rp 76.500",
        "imageUrl":
            "https://s4.bukalapak.com/img/45879119992/large/data.jpeg.webp"
      },
      {
        "Produk":
            "SKINTIFIC ALASKA VOLCANO CLAY DEEP PORES CLEANSING CLAY MASK 55GR",
        "harga": "Rp 77.900",
        "imageUrl":
            "https://s3.bukalapak.com/img/82990343992/large/data.jpeg.webp"
      },
      // Tambahkan data lain sesuai kebutuhan Anda
    ];

    return MaterialApp(
      title: 'Project Flutter',
      home: Scaffold(
        backgroundColor: Color(0xffc12774),
        appBar: AppBar(
          centerTitle: true,
          title: Text('SKINTIFIC '),
          backgroundColor: Color(0xff250d7c),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.network(item["imageUrl"] ?? ""),
                  radius: 25,
                ),
                title: Text(
                  item["Produk"] ?? "",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Harga: ${item["harga"] ?? ""}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
