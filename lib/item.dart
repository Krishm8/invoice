// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:invoice/util.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Software Company",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Form(
        key: gkey,
        child: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item Name",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: nameController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Quantity/Hours",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: quantityController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rate",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: rateController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Amount",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: amountController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Details",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: detailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        itmdetail.iname = nameController.text;
                        itmdetail.iquantity = quantityController.text;
                        itmdetail.irate = rateController.text;
                        itmdetail.iamount = amountController.text;
                        itmdetail.idetail = detailController.text;
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(
                          Size(150, 60),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(
                          Size(150, 60),
                        ),
                      ),
                      onPressed: () {
                        gkey.currentState?.reset();
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class idetail extends StatelessWidget {
  const idetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 100,
      width: 350,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${itmdetail.iname}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            "${itmdetail.iquantity}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "${itmdetail.irate}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "${itmdetail.iamount}",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
