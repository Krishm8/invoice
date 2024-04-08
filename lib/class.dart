class CustomerDetail{
  String? name="";
  String? gst="";
  String? email="";
  String? phone="";
  String? address="";

  List<String> myDetail=[];
}

class Item{
  String? iname="";
  String? iquantity="";
  String? irate="";
  String? iamount="";
  String? idetail="";
}


class Myinvoice{
  String? name = "";
  String? gstin="";
  String? state1="";
  String? address="";
  String? city="";
  String? state2="";
  String? code="";
  String? country="";
  String? invoiceDate = "";
  String? dueDate = "";
  String? invnum="";
  String? inv="";
  String? item="";
  int? price;
  int? quantity;
  int? gst;
  int? amount;
  int? cess;
  int? total;
  int? subtotal;
}

Myinvoice invoice=Myinvoice();
