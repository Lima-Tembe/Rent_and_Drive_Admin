import 'package:rent_and_drive_admin/model/customer.dart';
import 'package:rent_and_drive_admin/model/supplier.dart';

class Invoice {
  final InvoiceInfo info;
  final Supplier supplier;
  final Customer customer;
  final List<InvoiceItem> items;

  const Invoice({
    this.info,
    this.supplier,
    this.customer,
    this.items,
  });
}

class InvoiceInfo {
  final String description;
  final String number;
  final DateTime date;

  const InvoiceInfo({
    this.description,
    this.number,
    this.date,
  });
}

class InvoiceItem {
  final String car;
  final String email;
  final String name;
  final DateTime date;
  final DateTime dueDate;
  final double price;
  final int days;

  const InvoiceItem({
    this.car,
    this.date,
    this.dueDate,
    this.price,
    this.email,
    this.name,
    this.days,
  });
}
