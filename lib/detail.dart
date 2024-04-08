// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice/item.dart';
import 'package:invoice/pdf_page.dart';
import 'package:invoice/util.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool check1 = false;
  int j = 0;
  int product=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("#0"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cdetail");
                  setState(() {

                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 40,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          "${cusdetail.name}",
                          style: TextStyle(fontSize: 20),
                        ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.arrow_circle_right,
                color: Colors.blue,
                size: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    "18 march 2024",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Qty",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Rate",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Amt",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: productdetail.map((e) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                  onTap: () {
                                    productdetail.remove(e);
                                    setState(() {});
                                  },
                                  child: Icon(Icons.delete)),
                            ),
                            idetail(),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      product++;
                      productdetail.add(product);
                      Navigator.pushNamed(context, "item");
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Add new item",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              PdfData().getPdfPreview();
            },
            child: Container(
              height: 40,width: 120,color: Colors.red,
            ),
          ),
          Container(
            child: Column(
              children: [
                Divider(thickness: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 280,
                    ),
                    Text(
                      "$j",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.currency_rupee),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
