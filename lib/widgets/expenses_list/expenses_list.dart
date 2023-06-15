import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });
  final List<Expense> expenses;
  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: (ctz, index) => ExpenseItem(expenses[index]),
      itemCount: expenses.length,
    );
  }
}
