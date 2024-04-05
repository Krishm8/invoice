import 'package:flutter/material.dart';
import 'package:invoice/util.dart';

class cdetail extends StatefulWidget {
  const cdetail({super.key});

  @override
  State<cdetail> createState() => _cdetailState();
}

class _cdetailState extends State<cdetail> {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    nameController.text = cusdetail.name ?? "";
    gstController.text=cusdetail.gst??"";
    emailController.text = cusdetail.email ?? "";
    phoneController.text = cusdetail.phone ?? "";
    addressController.text = cusdetail.address ?? "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer Detail",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: fkey,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Customer name",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: nameController,
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
                  "GSTIN",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: gstController,
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
                  "Email",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
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
                  "Phone number",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
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
                  "Addreess",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: addressController,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 60),
                          ),
                        ),
                        onPressed: () {
                          cusdetail.name=nameController.text;
                          cusdetail.gst=gstController.text;
                          cusdetail.email=emailController.text;
                          cusdetail.phone=phoneController.text;
                          cusdetail.address=addressController.text;
                          fkey.currentState?.save();
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.black),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                          fixedSize: MaterialStatePropertyAll(
                            Size(150, 60),
                          ),
                        ),
                        onPressed: () {
                          fkey.currentState?.reset();
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 20),
                        ),
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
