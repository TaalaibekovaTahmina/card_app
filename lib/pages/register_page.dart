import 'package:flutter/material.dart';
import 'package:tirkeme3/pages/my_home_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameCtl = TextEditingController();
  final _kesibiCtl = TextEditingController();
  final _phoneCtl = TextEditingController();
  final _gmailCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 120),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameCtl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Аты-жөнү',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'сураныч аты-жонуңуздү толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _kesibiCtl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Кесиби',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'сураныч кесибиңизди толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _phoneCtl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Телефон номери',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'сураныч телефон номериңизди толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _gmailCtl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Gmail аккаунт',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'сураныч Gmail аккаунтуңузду толтуруңуз';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MyHomePage(
                                name: _nameCtl.text,
                                kesibi: _kesibiCtl.text,
                                phone: _phoneCtl.text,
                                gmail: _gmailCtl.text,
                              );
                            },
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'сураныч бош калган жерлерди толтурунуз...',
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Сактоо',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
