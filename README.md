# Analizador Léxico - Java

Una aplicación de análisis léxico desarrollada en Java con interfaz gráfica Swing que identifica y clasifica tokens en código fuente.

## Características

- **Interfaz Gráfica Intuitiva**: Diseño claro con áreas separadas para entrada y salida
- **Análisis en Tiempo Real**: Procesa texto inmediatamente al hacer clic en "Analizar"
- **Clasificación de Tokens**: Identifica:
  - **Variables** (con contador)
  - **Números**
  - **Palabras Reservadas** (con contador)
  - **Tokens varios**
- **Manejo de Errores**: Detecta y gestiona tokens no reconocidos
- **Estadísticas**: Muestra conteo de variables y palabras reservadas encontradas

## Tecnologías Utilizadas

- **Java Swing** para la interfaz gráfica
- **Java IO** para manejo de archivos temporales
- **Java NIO** para creación y escritura de archivos
- **Sistema de tokens personalizado**

## Funcionalidades del Analizador

El analizador procesa el texto ingresado y clasifica cada elemento en:
- `Variable`: Identificadores de variables
- `Numero`: Valores numéricos
- `PalabraReservada`: Palabras clave del lenguaje
- `ERROR`: Tokens no reconocidos (ignorados en la salida)

## Interfaz de Usuario

La pantalla principal contiene:
- **Área de Entrada**: Para ingresar el código fuente a analizar
- **Botón "Analizar"**: Inicia el proceso de análisis léxico
- **Área de Salida**: Muestra los tokens identificados y estadísticas
- **Etiquetas informativas**: Guían al usuario en el uso
