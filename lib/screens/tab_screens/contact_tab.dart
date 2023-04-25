import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;

import '../../data/main_screen_data.dart' as main_screen_data;
import '../../data/global_data.dart' as g_d;
import '../../data/tabs_data/contact_tab_data.dart' as c_t_d;

class ContactTab extends StatelessWidget {
  ContactTab({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  Future sendEmail(String name, String email, String phone, String message) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = c_t_d.serviceId;
    const templateId = c_t_d.templateId;
    const userId = c_t_d.userId;
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},//This line makes sure it works for all platforms.
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': name,
            'from_email': email,
            'phone': phone,
            'message': message
          }
        }));
    return response.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: g_d.tabsBackgroundColor,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2.0 ,
          width: MediaQuery.of(context).size.width / 2.5,
          margin: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.grey[300]!)
              ]),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(c_t_d.formHeader,
                  style: TextStyle(
                      fontSize: c_t_d.headerFontSize,
                      fontWeight: FontWeight.bold
                  ),
                  textDirection: TextDirection.rtl,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: c_t_d.fullNameTextHint,
                    alignLabelWithHint: true,
                  ),
                  textAlign: TextAlign.right,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return c_t_d.requiredText;
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: c_t_d.emailTextHint,
                    alignLabelWithHint: true,
                  ),
                  textAlign: TextAlign.right,
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return c_t_d.requiredText;
                    } else if (!EmailValidator.validate(email)) {
                      return c_t_d.PleaseEnterValidEmail;
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    hintText: c_t_d.phoneNumberTextHint,
                    alignLabelWithHint: true,
                  ),
                  textAlign: TextAlign.right,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return c_t_d.requiredText;
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    hintText: c_t_d.messageTextHint,
                    alignLabelWithHint: true,
                  ),
                  textAlign: TextAlign.right,
                  maxLines: 2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return c_t_d.requiredText;
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 45,
                  width: 110,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: const Color(0xff151534),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final response = await sendEmail(
                            nameController.value.text,
                            emailController.value.text,
                            phoneController.value.text,
                            messageController.value.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          response == 200
                              ? const SnackBar(
                              content: Text('Message Sent!'),
                              backgroundColor: Colors.green)
                              : const SnackBar(
                              content: Text('Failed to send message!'),
                              backgroundColor: Colors.red),
                        );
                        nameController.clear();
                        emailController.clear();
                        phoneController.clear();
                        messageController.clear();
                      }
                    },
                    child: const Text(c_t_d.sendButtonText,
                        style: TextStyle(fontSize: c_t_d.sendButtonFontSize)
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
