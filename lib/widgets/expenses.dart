import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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
        category: Category.food),
    Expense(
        title: "Hotel Stay",
        amount: 21200,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Train ticket",
        amount: 10.50,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: "Movie",
        amount: 100.00,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Expense Tracker'),
          actions: [
            IconButton(
                onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add)),
          ],
        ),
        body: Column(
          children: [
            const Text('Chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ));
  }
}
