import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.namaPenampung, required this.emailPenampung, 
                  this.genderPenampung, this.jurusanPenampung});
  final namaPenampung;
  final emailPenampung;
  final genderPenampung;
  final jurusanPenampung;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buku tamu"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Halo $namaPenampung"),
            Text("Dengan Email $emailPenampung"),
            Text("Dengan Gender $genderPenampung"),
            Text("Dari Jurusan $jurusanPenampung"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}
