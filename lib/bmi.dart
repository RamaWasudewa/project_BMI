import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'profiles.dart';
import 'package:intl/intl.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int tanggal;
  int bulan;
  int tahun;
  String nama;
  String _valGender;
  List _listGender = ["Laki-Laki", "Perempuan"];
  int year = 0;

  getDateToday() {
    var now = new DateTime.now();
    var format = new DateFormat('yyyy');
    String dateFormat = format.format(now);
    var parse = int.parse(dateFormat);
    setState(() {
      year = parse;
    });
  }

  @override
  Widget build(BuildContext context) {
    //getDateToday();
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text('BMI Calculator'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profiles()),
              );
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/img1.png',
                height: 200,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  nama = txt;
                                });
                              },
                              keyboardType: TextInputType.text,
                              maxLength: 12,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: 'Masukkan Nama',
                                  labelText: 'Nama',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  prefixText: ' ',
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new DropdownButtonFormField(
                              items: _listGender.map((value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _valGender = value;
                                });
                              },
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  helperText: '',
                                  labelText: 'Jenis Kelamin',
                                  prefixIcon: const Icon(
                                    Icons.wc,
                                    color: Colors.blue,
                                  ),
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tanggal = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: '01-31',
                                  labelText: 'Tanggal',
                                  prefixIcon: const Icon(
                                    Icons.date_range,
                                    color: Colors.blue,
                                  ),
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  bulan = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: '01-12',
                                  labelText: 'Bulan',
                                  prefixIcon: const Icon(
                                    Icons.date_range,
                                    color: Colors.blue,
                                  ),
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tahun = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 4,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: '',
                                  labelText: 'Tahun',
                                  prefixIcon: const Icon(
                                    Icons.date_range,
                                    color: Colors.blue,
                                  ),
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: 'Isi Tinggimu',
                                  labelText: 'Tinggi',
                                  prefixIcon: const Icon(
                                    Icons.straighten,
                                    color: Colors.blue,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'Cm',
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blue)),
                                  hintText: 'Isi Beratmu',
                                  labelText: 'Berat',
                                  prefixIcon: const Icon(
                                    Icons.fitness_center,
                                    color: Colors.blue,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'Kg',
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.red)),
                color: Colors.black87,
                textColor: Colors.red,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (_valGender != '' &&
                      nama != null &&
                      tahun != null &&
                      bulan != null &&
                      tanggal != null &&
                      tinggi != null &&
                      berat != null) {
                    if ((tanggal > 0 && tanggal <= 31) &&
                        (bulan > 0 && bulan <= 12) &&
                        (tahun > 1900 && tahun < 2020)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResult(
                                  tinggi_badan: tinggi,
                                  berat_badan: berat,
                                  nama_user: nama,
                                  jenis_kelamin: _valGender,
                                  tanggal: tanggal,
                                  bulan: bulan,
                                  tahun: tahun,
                                )),
                      );
                    } else {
                      return ErrorDescription("Perhatikan Tanggal Lahir Anda");
                    }
                  } else {
                    return ErrorDescription("Mohon diisi semua");
                  }
                },
                child: Text(
                  "Cek Sekarang",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
