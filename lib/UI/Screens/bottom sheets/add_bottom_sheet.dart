import 'package:flutter/material.dart';
import 'package:todo_app/UI/Utilities/app_color.dart';
import 'package:todo_app/UI/Utilities/app_theme.dart';
import 'package:todo_app/UI/widgets/customTextField.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add New Task',
            textAlign: TextAlign.center,
            style: AppTheme.bottomSheetTitleTextStyle,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: "Enter task title",
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: "Enter task description",
          ),
          const SizedBox(height: 16),
          Text(
            'Select date',
            style: AppTheme.bottomSheetTitleTextStyle
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            '24/9/2023',
            style: AppTheme.bottomSheetTitleTextStyle
                .copyWith(fontWeight: FontWeight.w600, color: AppColors.grey),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add'),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
