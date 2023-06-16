import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  void _titleInput(String value) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            onChanged: _titleInput,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Expense Title'),
            ),
          ),
        ],
      ),
    );
  }
}
