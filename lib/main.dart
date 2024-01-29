import 'package:flutter/material.dart';
import 'package:latihan1/page_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buku Tamu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _jurusanController = TextEditingController();

  Widget _buildTextField(
    TextEditingController controller,
    String labelText,
    TextInputType keyboardType,
  ) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildTextField(_namaController, 'Nama', TextInputType.text),
            _buildTextField(_emailController, 'Email', TextInputType.emailAddress),
            _buildTextField(_genderController, 'Gender', TextInputType.text),
            _buildTextField(_jurusanController, 'Jurusan', TextInputType.text),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(
                      namaPenampung: _namaController.text,
                      emailPenampung: _emailController.text,
                      genderPenampung: _genderController.text,
                      jurusanPenampung: _jurusanController.text,
                    ),
                  ),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
