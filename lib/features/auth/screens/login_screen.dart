import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';

import '../controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void pickCountry() {
      showCountryPicker(
          context: context,
          onSelect: (Country _country) {
            setState(() {
              country = _country;
            });
          });
    }

    void sendPhoneNumber() {
      String phoneNumber = phoneController.text.trim();
      if (country != null && phoneNumber.isNotEmpty) {
        ref
            .read(authControllerProvider)
            .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
      } else {
        showSnackBar(context: context, content: "Fill Out All Fields");
      }
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text('WhatsApp will need to verify your phone number.'),
              const SizedBox(height: 10),
              TextButton(
                onPressed: pickCountry,
                child: const Text('Pick Country'),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (country != null) Text('+${country!.phoneCode}'),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      decoration:
                          const InputDecoration(hintText: 'Phone Number'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.55),
              SizedBox(
                  width: 90,
                  child:
                      CustomButton(text: 'NEXT', onPressed: sendPhoneNumber)),
            ],
          ),
        ),
      ),
    );
  }
}
