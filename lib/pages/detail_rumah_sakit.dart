import 'package:capstone_dicoding_semaapps/pages/list_poli.dart';
import 'package:flutter/material.dart';

class DetailRumahSakit extends StatefulWidget {
  static const routeName = '/detail-rs';
  final String namaRS;
  const DetailRumahSakit({super.key, required this.namaRS});

  @override
  State<DetailRumahSakit> createState() => _DetailRumahSakitState();
}

class _DetailRumahSakitState extends State<DetailRumahSakit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.namaRS)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerListRs(
                color: Colors.lightBlue.shade200,
                img: 'assets/img/doctor.png',
                title: "Daftar Berobat",
                subtitle:
                    "Daftkan diri anda bersama dokter yang sangat berpengalaman",
                onTap: () {
                  print("Daftar Berobat");
                  Navigator.pushNamed(context, ListPoli.routeName,
                      arguments: widget.namaRS);
                },
              ),
              ContainerListRs(
                color: Colors.cyan.shade200,
                img: 'assets/img/doctor_1.png',
                title: "Konsultasi",
                subtitle: "ingin mengetahui anda sakit apa ? bisa yuk di tanya",
                onTap: () {
                  print("Konsultasi");
                },
              ),
              ContainerListRs(
                color: Colors.teal.shade100,
                img: 'assets/img/pills.png',
                title: "Beli Obat",
                subtitle: "disni tempatnya",
                onTap: () {
                  print("Beli Obat");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerListRs extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final Color color;
  final VoidCallback onTap;
  const ContainerListRs({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.img,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        height: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20),
                height: 80,
                child: Image.asset(
                  img,
                )),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: 180,
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
