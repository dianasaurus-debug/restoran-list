// import 'package:darurat_app/login_pemilik_kos.dart';
// import 'package:darurat_app/register_pemilik_kos.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:kos_dea/daftar_favorit.dart';
import 'package:kos_dea/login_index.dart';
import 'package:kos_dea/register_index.dart';
class TempatKos {
  const TempatKos(this.idTempat, this.nama_tempat);
  final String nama_tempat;
  final int idTempat;

}
class PencarianPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new PencarianPageState();
}
class PencarianPageState extends State<PencarianPage> {
  Widget build(BuildContext context) {
    TempatKos selectedTempatkos = const TempatKos(1, 'Surabaya');
    List<TempatKos> dataTempatKos = <TempatKos>[const TempatKos(1,'Surabaya'), const TempatKos(2,'Malang'), const TempatKos(3,'Sidoarjo'),const TempatKos(4,'Bandung')];

    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      onPrimary: Colors.black,
      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
      primary: Color(0xfff5c32b),
    );
    return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30,60,30,15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child:Image(image: AssetImage('images/logo_app.png'),width: 120),
              ),
              const SizedBox(height: 20),
              TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Cari Kos",
                  prefixIcon: Icon(Icons.search, size: 35,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            ),
              const SizedBox(height: 15),
              //first
              Text('Rekomendasi Kos', style: TextStyle(color: Colors.black, fontSize: 18),),
              const SizedBox(height: 15),
              DropdownButtonFormField<TempatKos>(
                elevation: 16,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color:Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))

                    ),

                    hintText: 'Pilih tempat kos',
                    isDense: true
                ),
                onChanged: (newValue) {
                  setState(() {
                    if(newValue!=null){
                      selectedTempatkos = newValue;
                    }
                  });
                },
                items: dataTempatKos.map((TempatKos tempatkos) {
                  return new DropdownMenuItem<TempatKos>(
                    value: tempatkos,
                    child: new Text(
                      tempatkos.nama_tempat,
                      style: new TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child:
                          Image(image: AssetImage('images/sample_kos.jpeg'),fit: BoxFit.cover,)
                        )),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:
                            Image(image: AssetImage('images/sample_kos.jpeg'),fit: BoxFit.cover,)
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: styleButton,
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  // if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   ScaffoldMessenger.of(context)
                  //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                  // }
                },
                child: Text('Lihat Semua', style : TextStyle()),
              ),
              const SizedBox(height: 30),

              //second
              Text('Promo Kos', style: TextStyle(color: Colors.black, fontSize: 18),),
              const SizedBox(height: 15),
              DropdownButtonFormField<TempatKos>(
                elevation: 16,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color:Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))

                    ),

                    hintText: 'Pilih tempat kos',
                    isDense: true
                ),
                onChanged: (newValue) {
                  setState(() {
                    if(newValue!=null){
                      selectedTempatkos = newValue;
                    }
                  });
                },
                items: dataTempatKos.map((TempatKos tempatkos) {
                  return new DropdownMenuItem<TempatKos>(
                    value: tempatkos,
                    child: new Text(
                      tempatkos.nama_tempat,
                      style: new TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:
                            Image(image: AssetImage('images/sample_kos.jpeg'),fit: BoxFit.cover,)
                        )),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:
                            Image(image: AssetImage('images/sample_kos.jpeg'),fit: BoxFit.cover,)
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: styleButton,
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  // if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   ScaffoldMessenger.of(context)
                  //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                  // }
                },
                child: Text('Lihat Semua', style : TextStyle()),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xfff5c32b),
          currentIndex: 0,
          onTap: (value) {
            switch (value) {
              case 0:
                Route route = MaterialPageRoute(
                    builder: (context) => PencarianPage());
                Navigator.push(context, route);
                break;
              case 1:
                Route route = MaterialPageRoute(
                    builder: (context) => FavoritPage());
                Navigator.push(context, route);
                break;
            }
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Cari'),
              icon: Icon(Icons.search, size: 35),
            ),
            BottomNavigationBarItem(
              title: Text('Favorit'),
              icon: Icon(Icons.favorite_border_outlined,  size: 35),
            ),
            BottomNavigationBarItem(
              title: Text('Booking'),
              icon: Icon(Icons.calendar_today_sharp,  size: 35),
            ),
            BottomNavigationBarItem(
              title: Text('Profil'),
              icon: Icon(Icons.person_outline_outlined,  size: 35),
            ),
          ],
        ),
    );
  }
}
