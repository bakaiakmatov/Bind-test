import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';

class DropDownWidget extends StatelessWidget {
  final String hint;
  final ValueChanged<String?> onChanged;
  final FormFieldValidator<String> validator;
  final List<DropdownMenuItem<String>> listOfValue;
  const DropDownWidget({
    Key? key,
    required this.hint,
    required this.onChanged,
    required this.validator,
    required this.listOfValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.woodsmokeColor,
      ),
      child: SizedBox(
        height: 48,
        child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
            hint: Text(
              hint,
              style: AppStyles.text14w400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            style: AppStyles.text14w400.copyWith(
              color: AppColors.whiteColor,
            ),
            isExpanded: true,
            onChanged: (value) => onChanged(value),
            validator: validator,
            items: listOfValue),
      ),
    );
  }
}
