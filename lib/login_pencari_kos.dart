// import 'package:darurat_app/login_pemilik_kos.dart';
// import 'package:darurat_app/register_pemilik_kos.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:kos_dea/pencarian.dart';

class LoginPencariPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      onPrimary: Colors.white,
      primary: Color(0xfff5c32b),
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),

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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top : 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>
                      [
                        Text('Login Pencari Kos',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'Roboto')
                        ),
                        const SizedBox(height: 40),
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text('E-Mail',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontFamily: 'Roboto')
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'E-Mail tidak boleh kosong';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xfff5c32b), width: 2),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xfff5c32b), width: 2),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2),
                                  ),
                                  hintText: 'Masukkan E-Mail',
                                ),

                              ),
                              const SizedBox(height: 30),
                              Text('Password',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontFamily: 'Roboto')
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password tidak boleh kosong';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xfff5c32b), width: 2),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xfff5c32b), width: 2),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2),
                                  ),
                                  hintText: 'Masukkan Password',
                                ),

                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                style: styleButton,
                                onPressed: () {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    Route route = MaterialPageRoute(
                                        builder: (context) => PencarianPage());
                                    Navigator.push(context, route);
                                  }
                                },
                                child: Text('Login', style : TextStyle()),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Belum punya akun Kosku? ',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            children: const <TextSpan>[
                              TextSpan(text: 'Daftar sekarang', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xfff5c32b), fontSize: 15)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),

                        Text(
                            'Lupa Password',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xfff5c32b), fontSize: 18)
                        )
                      ]
                  )
              )
            ],
          ),
        ));
  }
}
