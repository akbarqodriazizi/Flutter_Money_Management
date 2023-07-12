import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool Pengeluaran = true;

  void openDialog() {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      (Pengeluaran)
                          ? "Tambah Pengeluaran"
                          : "Tambah Pemasukan ",
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: (Pengeluaran) ? Colors.red : Colors.green),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Nama"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: (Pengeluaran) ? Colors.red : Colors.green),
                        child: Text("simpan"))
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                // icon switc
                value: Pengeluaran,
                onChanged: (bool value) {
                  setState(() {
                    Pengeluaran = value;
                  });
                },
                inactiveTrackColor: Colors.green,
                inactiveThumbColor: Colors.green,
                activeColor: Colors.red,
              ),
              IconButton(
                  onPressed: () {
                    openDialog();
                  },
                  icon: Icon(Icons.add_rounded))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10, //shadow
            child: ListTile(
              leading: (Pengeluaran)
                  ? Icon(Icons.upload, color: Colors.red)
                  : Icon(Icons.download_sharp, color: Colors.green),
              title: Text("Sedekah"),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10, //shadow
            child: ListTile(
              leading: (Pengeluaran)
                  ? Icon(Icons.upload, color: Colors.red)
                  : Icon(Icons.download_sharp, color: Colors.green),
              title: Text("Bagi Duidd"),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ]),
            ),
          ),
        ),
      ],
    ));
  }
}
