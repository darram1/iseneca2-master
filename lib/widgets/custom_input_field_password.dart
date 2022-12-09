import 'package:flutter/material.dart';

class CustomInputFieldPassword extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  Color colorIcon;
  bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  CustomInputFieldPassword({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.colorIcon = Colors.white,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  State<CustomInputFieldPassword> createState() =>
      _CustomInputFieldPasswordState();
}

class _CustomInputFieldPasswordState extends State<CustomInputFieldPassword> {
 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      onChanged: ((value) {
        widget.formValues[widget.formProperty] = value;
      }), 
      /*validator: (value) {          
        if (value == null) return 'Este campo es requerido';
        
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },*/
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.white),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white),
        helperText: widget.helperText,
        fillColor: Colors.white,

        //prefixIcon: Icon(Icons.verified_user_outlined),

        suffixIcon: IconButton(
          icon: Icon(
            widget.obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: () {
            widget.obscureText = !widget.obscureText;
            
            setState(() {});
          },
        ),

        icon: widget.suffixIcon == null
            ? null
            : const Icon(Icons.assignment_ind_outlined),
      ),
    );
  }
}
