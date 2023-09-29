import 'package:absen_app/src/models/mata_kuliah.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  final MataKuliah item;
  const ItemDetailsView({
    super.key,
    required this.item,
  });

  static const routeName = '/class_details';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              title: Text(
                "${item.name} ${item.id}",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              bottom: const TabBar(tabs: [
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.book),
                      SizedBox(width: 6),
                      Text('Content'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.people),
                      SizedBox(width: 6),
                      Text('Colleges'),
                    ],
                  ),
                ),
              ]),
            ),
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: item.konten.length,
                  itemBuilder: (BuildContext context, int index) {
                    final content = item.konten[index];

                    return ExpansionTile(
                      title: Text(
                        "Pertemuan ${index + 1}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: <Widget>[
                        // ListTile(
                        //   title: Text(content.judul),
                        //   subtitle: Text(content.deskripsi),
                        // ),

                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                color: Colors.grey,
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                content.deskripsi,
                                style: TextStyle(fontSize: 12),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Color(0xFFC1C1C1),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: item.daftarMahasiswa.length,
                  itemBuilder: (BuildContext context, int index) {
                    final college = item.daftarMahasiswa[index];

                    return ListTile(
                      title: Text(
                        college.nama,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(college.nim),
                      leading: Icon(
                        college.jenisKelamin == "Male"
                            ? Icons.male
                            : Icons.female,
                      ),
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
