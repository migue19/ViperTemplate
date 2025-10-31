# Plantilla VIPER para Xcode

Una plantilla completa de archivos para Xcode que genera módulos con arquitectura VIPER en proyectos iOS. Esta plantilla crea automáticamente todos los archivos necesarios y el código base para implementar el patrón de diseño VIPER (View, Interactor, Presenter, Entity, Router).

## ¿Qué es VIPER?

VIPER es un patrón arquitectónico que aplica principios de arquitectura limpia a aplicaciones iOS. VIPER significa:

- **View (Vista)**: Muestra lo que le indica el Presenter y envía la entrada del usuario de vuelta al Presenter
- **Interactor**: Contiene la lógica de negocio para un caso de uso específico
- **Presenter**: Contiene la lógica de vista para preparar el contenido para mostrar y para reaccionar a las entradas del usuario
- **Entity (Entidad)**: Contiene objetos de modelo básicos utilizados por el Interactor
- **Router**: Contiene la lógica de navegación que describe qué pantallas se muestran y en qué orden

## Estructura de la Plantilla

Esta plantilla genera los siguientes archivos para cada módulo:

- `___FILEBASENAME___VC.swift` - View Controller (capa de Vista)
- `___FILEBASENAME___VC.xib` - Archivo de Interface Builder para el View Controller
- `___FILEBASENAME___Presenter.swift` - Capa Presenter
- `___FILEBASENAME___Interactor.swift` - Capa Interactor (lógica de negocio)
- `___FILEBASENAME___Entity.swift` - Entidades/Modelos de datos
- `___FILEBASENAME___Router.swift` - Capa Router (navegación)
- `___FILEBASENAME___Protocols.swift` - Todos los protocolos para comunicación del módulo
- `___FILEBASENAME___RemoteDataManager.swift` - Gestor de datos para operaciones remotas

## Instalación

### Instalación Automática

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/migue19/NewViperTemplate.git
   ```

2. **Ejecuta el script de instalación:**
   ```bash
   cd NewViperTemplate
   sh install_template.sh
   ```

### Instalación Manual

1. Clona o descarga este repositorio
2. Copia la carpeta `VIPER.xctemplate` a:
   ```
   ~/Library/Developer/Xcode/Templates/File Templates/
   ```

## Uso

1. En Xcode, crea un nuevo archivo (`⌘+N`)
2. Selecciona la plantilla "VIPER" de las plantillas de archivo
3. Ingresa el nombre de tu módulo cuando se solicite
4. Elige la ubicación para tus archivos
5. La plantilla generará todos los archivos VIPER con el nombre de tu módulo

## Características

- ✅ Implementación completa de arquitectura VIPER
- ✅ Diseño orientado a protocolos
- ✅ Separación de responsabilidades
- ✅ Código base listo para usar
- ✅ Archivo XIB para diseño de interfaz
- ✅ Gestor de datos remotos incluido
- ✅ Optimizado para plataforma iOS

## Requisitos

- Xcode 12.0+
- iOS 13.0+
- Swift 5.0+

## Contribuciones

¡Siéntete libre de enviar issues y solicitudes de mejoras!

## Licencia

Esta plantilla está disponible bajo la licencia MIT.
