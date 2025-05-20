# Taller Práctico Flutter - Rick y Morty

## Descripción

En este repositorio encontrarás una solución que tiene un menú principal con 3 opciones:

1. **Home**: Contiene una lista de personajes de Rick y Morty con vista detalle.
2. **Search**: Pantalla de búsqueda.
3. **Profile**: Pantalla de perfil.

La funcionalidad principal está en la primera opción, donde se implementa una vista de lista-detalle que consume la API pública de Rick y Morty.

## Objetivo del Taller

Tu trabajo como experto en Flutter es aplicar las mejores prácticas de programación vistas en clase para convertir esta solución en una aplicación escalable y mantenible.

## Requisitos

Para lograr este objetivo es indispensable que utilices:

- **Riverpod** como gestor de estado
- El patrón arquitectónico **MVC** (Modelo-Vista-Controlador)
- Una clara separación de responsabilidades entre las diferentes clases

## Tiempo y Entrega

- Duración de la actividad: **2 horas**
- Proceso de entrega:
  1. Crear una rama con tu solución
  2. A partir de esta rama, crear un Pull Request a la rama principal
  3. Incluir en el README una explicación detallada de los aspectos que mejoraste en la aplicación

## Criterios de Evaluación

Se valorará especialmente:

- La correcta implementación del patrón MVC
- El uso adecuado de Riverpod para la gestión del estado
- La separación de responsabilidades entre clases
- La claridad y mantenibilidad del código resultante
- La UI del detalle del personaje.

## **Explicación de las mejoras**

## 1. Gestión de estado moderna con Riverpod

- Se utilizó Riverpod para una gestión de estado reactiva, escalable y desacoplada, reemplazando enfoques menos eficientes como setState.

## 2. Aplicación del patrón MVC

- Se separaron claramente los modelos, vistas y controladores, mejorando la organización, escalabilidad y facilidad de prueba.

## 3. Separación de responsabilidade.

- Cada clase cumple una única función:

  - Modelo: estructura de datos

  - Controlador: lógica de negocio

  - Vista: presentación

## 4. Consumo eficiente de API

- El CharacterController maneja la obtención de datos de la API de forma asíncrona, gestionando estados de carga y error.

## 5. Interfaz de usuario modular y reactiva

- Uso de widgets reutilizables (como CustomAppBar), navegación intuitiva y componentes interactivos como BottomNavigationBar.

## 6. Código limpio y mantenible

- Organización clara por archivos (modelos, vistas, controladores, widgets) y aplicación de buenas prácticas de Flutter y Dart.
