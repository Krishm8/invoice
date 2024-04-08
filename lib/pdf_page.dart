import 'dart:typed_data';
import 'package:invoice/class.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

class PdfData {
  PdfPreview getPdfPreview() {
    return PdfPreview(build: (format) {
      return getPdf();
    });
  }

  Future<Uint8List> getPdf() async {
    var document = Document();
    document.addPage(Page(build: (context) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("India", style: TextStyle(fontSize: 20)),
          Text("Tax Invoice", style: TextStyle(fontSize: 40))
        ]),
        SizedBox(height: 35),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Bill To",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "invoice Number  ",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "INV-${invoice.invnum}",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
                  ])))
        ]),
        SizedBox(height: 25),
        Text("${invoice.name}", style: TextStyle(fontSize: 19)),
        SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("${invoice.address}", style: TextStyle(fontSize: 19)),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "invoice Date  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "${invoice.invoiceDate}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              ]))
        ]),
        SizedBox(height: 5),
        Text("${invoice.city}, ${invoice.state2}, ${invoice.code}",
            style: TextStyle(fontSize: 19)),
        SizedBox(height: 5),
        Text("${invoice.state2}", style: TextStyle(fontSize: 19)),
        SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("${invoice.country}", style: TextStyle(fontSize: 19)),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Due Date  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "${invoice.dueDate}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              ]))
        ]),
        SizedBox(height: 5),
        Text("GSTIN ${invoice.gstin}", style: TextStyle(fontSize: 19)),
        SizedBox(height: 20),
        RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Place of Supply:  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "${invoice.state1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            ])),
        SizedBox(height: 20),
        Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: PdfColor.fromInt(0xff666666)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(width: 10),
              Text("Item Name",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
              SizedBox(width: 50),
              Text("Quantity",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
              SizedBox(width: 25),
              Text("Rate",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
              SizedBox(width: 25),
              Text("CGST",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
              SizedBox(width: 25),
              Text("Cess",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
              SizedBox(width: 25),
              Text("Amount",
                  style: TextStyle(color: PdfColors.white, fontSize: 15)),
            ])),
        SizedBox(height: 10),
        Row(children: [
          SizedBox(width: 10),
          Text("${invoice.item}", style: TextStyle(fontSize: 20)),
          SizedBox(width: 90),
          Text("${invoice.quantity}", style: TextStyle(fontSize: 20)),
          SizedBox(width: 40),
          Text("${invoice.price}", style: TextStyle(fontSize: 20)),
          SizedBox(width: 30),
          Text("5.00", style: TextStyle(fontSize: 20)),
          SizedBox(width: 20),
          Text("20.00", style: TextStyle(fontSize: 20)),
          SizedBox(width: 40),
          Text(
            "${invoice.subtotal}",
            style: TextStyle(fontSize: 20),
          ),
        ]),
        Padding(
            padding: EdgeInsets.only(left: 280, top: 20),
            child: Column(
                children: [
                  Row(children: [
                    SizedBox(width: 45),
                    Text("CGST ",style: TextStyle(fontSize: 20)),
                    SizedBox(width: 30),
                    Text("${invoice.gst}.00", style: TextStyle(fontSize: 20))
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    SizedBox(width: 45),
                    Text("Cess ", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 40),
                    Text("${invoice.cess}.00", style: TextStyle(fontSize: 20))
                  ]),
                  SizedBox(height: 20),
                  Padding(padding: EdgeInsets.only(left: 45),child: Row(children: [
                    Text("Total", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 50),
                    Text("${invoice.total}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                  ]))
                ]))
      ]);
    }));

    return document.save();
  }
}