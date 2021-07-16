// import 'package:darurat_app/login_pemilik_kos.dart';
// import 'package:darurat_app/register_pemilik_kos.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:kos_dea/login_pemilik_kos.dart';
import 'package:kos_dea/login_pencari_kos.dart';

class LoginIndexPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      onPrimary: Colors.black,
      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
      side: BorderSide(color: Color(0xfff5c32b)),
    );
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.clear, color: Colors.grey, size: 40),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Color(0xffffffff),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.only(top : 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>
                      [
                        Text('Login Akun',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'Roboto')
                        ),
                        const SizedBox(height: 25),
                        Text('Saya ingin login sebagai',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Roboto')
                        ),
                        const SizedBox(height: 13),
                        OutlinedButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => LoginPemilikPage());
                            Navigator.push(context, route);
                          },
                          style: styleButton,
                          child: const Text('Pemilik Kos'),
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton(
                          style: styleButton,
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => LoginPencariPage());
                            Navigator.push(context, route);
                          },
                          child: const Text('Pencari Kos'),
                        ),
                      ]))
            ],
          ),
        ));
  }
}
