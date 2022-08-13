import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactsForm extends StatefulWidget {
  const ContactsForm({Key? key}) : super(key: key);

  @override
  State<ContactsForm> createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: accountNumberController,
                decoration: const InputDecoration(
                  labelText: 'Account Number',
                ),
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String name = nameController.text;
                    final int? accountNumber =
                        int.tryParse(accountNumberController.text);
                    final Contact newContact = Contact(name, accountNumber!);
                    Navigator.pop(context, newContact);
                  },
                  child: const Text('Create'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
