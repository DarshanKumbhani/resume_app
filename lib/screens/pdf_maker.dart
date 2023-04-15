import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app/screens/home_screen.dart';

Future<Uint8List>GeneratePDF()
async {
  var PDF = pw.Document();

  PDF.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      orientation: pw.PageOrientation.portrait,
      build: (context) {
        return pw.Column(
          children: [
            pw.Center(
              child: pw.ClipOval(
                child: pw.Image(pw.MemoryImage(

                  File("${m1.path}").readAsBytesSync(),
                ))

              )
            ),
            pw.Column(
              children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  First name              -       ${m1.f_name}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Last Name              -       ${m1.l_name}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Address                     -       ${m1.address}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Number                   -       ${m1.number}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Age                          -       ${m1.age}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Email                       -    ${m1.email}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Gender                    -       ${m1.gender}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  IT_Field                   -       ${m1.it_field}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Doctor_Field           -       ${m1.doctor_field}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Engineering             -       ${m1.engineering}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Job Experience       -       ${m1.job_experience}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Language                 -       ${m1.languages}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(8.0),
                  child: pw.Container(
                      height: 40,
                      width: double.infinity,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(width: 2, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(10)),
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        "  Salary       -       ${m1.sal}",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                ),
              ],
            )
          ],



        );

      },
    ),

  );

  return await PDF.save();

}