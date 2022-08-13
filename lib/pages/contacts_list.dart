import 'package:bytebank_v2/pages/contacts_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Nome',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                'Número da Conta',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ContactsForm()
            ),
          ).then((newContact) => debugPrint(newContact.toString()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
