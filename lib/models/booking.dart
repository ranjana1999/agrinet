import 'package:flutter/foundation.dart';
class Booking {
  String docid;
  String farmType;
  String farmName;
  String price;
  String uid;
  String phone_number;
  String spid;
  String spName;
  String serviceName;
  String serviceCategory;
  String serviceSubCategory;
  DateTime Startdate;
  DateTime Enddate;
  DateTime createdOn;
  String status;
  DateTime statusOn;
  bool contractFarmer;
  bool isFarmerPaymentDone;
  DateTime farmerPaymentDate;
  String farmer_payment_id;
  String farmer_order_id;
  String farmer_signature;
  bool contractSp;
  DateTime spPaymentDate;
  bool isSpPaymentDone;
  String sp_payment_id;
  String sp_order_id;
  String sp_signature;

  Booking({
    @required this.docid,
    @required this.farmType,
    @required this.farmName,
    @required this.price,
    @required this.uid,
    @required this.phone_number,
    @required this.spid,
    @required this.serviceName,
    @required this.serviceCategory,
    @required this.serviceSubCategory,
    @required this.spName,
    @required this.Startdate,
    @required this.Enddate,
    @required this.createdOn,
    @required this.status,
    @required this.statusOn,
    @required this.contractFarmer,
    @required this.isFarmerPaymentDone,
    @required this.farmerPaymentDate,
    @required this.farmer_payment_id,
    @required this.farmer_order_id,
    @required this.farmer_signature,
    @required this.contractSp,
    @required this.isSpPaymentDone,
    @required this.spPaymentDate,
    @required this.sp_payment_id,
    @required this.sp_order_id,
    @required this.sp_signature,
  });

  Booking.fromJson(Map<String, dynamic> json) {
    farmType= json['farmType'];
    farmName= json['farmName'];
    uid= json['uid'];
    //phone_number= json['spid'];
    spid= json['spid'];
    spName= json['spName'];
    serviceName= json['serviceName'];
    Startdate= json['startTime'];
    Enddate= json['endTime'];
    createdOn= json['createdOn'];
  }
}