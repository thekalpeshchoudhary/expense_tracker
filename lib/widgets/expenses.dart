import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Burger",
        amount: 120.50,
        date: DateTime.now(),
        category: Categories.food),
    Expense(
        title: "Hotel Stay",
        amount: 21200,
        date: DateTime.now(),
        category: Categories.work),
    Expense(
        title: "Train ticket",
        amount: 10.50,
        date: DateTime.now(),
        category: Categories.travel),
    Expense(
        title: "Movie",
        amount: 100.00,
        date: DateTime.now(),
        category: Categories.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses))
      ],
    ));
  }
}
