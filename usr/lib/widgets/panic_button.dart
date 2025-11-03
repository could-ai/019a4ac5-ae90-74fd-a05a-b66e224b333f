import 'package:flutter/material.dart';

class PanicButton extends StatelessWidget {
  const PanicButton({super.key});

  void _showPanicOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            children: <Widget>[
              const ListTile(
                title: Text(
                  'Acalme-se, isso vai passar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.format_quote),
                title: const Text('Ler frase motivacional'),
                onTap: () {
                  // Lógica para mostrar frase
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.air),
                title: const Text('Técnica de respiração'),
                onTap: () {
                  // Lógica para iniciar respiração
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.directions_walk),
                title: const Text('Sugestão de atividade'),
                onTap: () {
                  // Lógica para sugerir atividade
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showPanicOptions(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(24),
      ),
      child: const Icon(
        Icons.warning_amber_rounded,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
