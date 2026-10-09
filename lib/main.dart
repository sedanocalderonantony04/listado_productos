import 'package:flutter/material.dart';

import 'lista_productos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listado de Productos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListaProductosScreen(),
    );
  }
}

class ListaProductosScreen extends StatelessWidget {
  const ListaProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de Productos')),
      body: ListView.builder(
        itemCount: listaProductos.length,
        itemBuilder: (context, index) {
          final producto = listaProductos[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(producto.nombre),
              subtitle: Text('${producto.categoria} - \$${producto.precio}'),
              leading: CircleAvatar(child: Text('${producto.id}')),
            ),
          );
        },
      ),
    );
  }
}
