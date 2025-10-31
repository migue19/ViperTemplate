# Plantillas VIPER para Xcode

Plantillas completas de archivos para Xcode que generan módulos con arquitectura VIPER en proyectos iOS. Incluye tres variantes para diferentes necesidades de desarrollo.

## Plantillas Disponibles

### �️ VIPER
Plantilla básica de VIPER sin capas de datos adicionales. Perfecta para módulos simples que no requieren gestión de datos compleja.

### �🌐 VIPER-RemoteData
Plantilla para módulos que manejan datos remotos (APIs, servicios web, etc.)

### 💾 VIPER-LocalData  
Plantilla para módulos que manejan datos locales (CoreData, UserDefaults, archivos locales, etc.)

Todas las plantillas crean automáticamente los archivos necesarios y el código base para implementar el patrón de diseño VIPER (View, Interactor, Presenter, Entity, Router) con diferentes niveles de funcionalidad.

## ¿Qué es VIPER?

VIPER es un patrón arquitectónico que aplica principios de arquitectura limpia a aplicaciones iOS. VIPER significa:

- **View (Vista)**: Muestra lo que le indica el Presenter y envía la entrada del usuario de vuelta al Presenter
- **Interactor**: Contiene la lógica de negocio para un caso de uso específico
- **Presenter**: Contiene la lógica de vista para preparar el contenido para mostrar y para reaccionar a las entradas del usuario
- **Entity (Entidad)**: Contiene objetos de modelo básicos utilizados por el Interactor
- **Router**: Contiene la lógica de navegación que describe qué pantallas se muestran y en qué orden

## ¿Cuál Template Usar?

### Usa VIPER (Básico) cuando:
- 🎯 Desarrolles módulos simples sin gestión de datos compleja
- 🎯 Necesites una arquitectura VIPER limpia y minimalista
- 🎯 El módulo maneje solo lógica de presentación y navegación
- 🎯 Quieras añadir capas de datos personalizadas más adelante

### Usa VIPER-RemoteData cuando:
- 🌐 El módulo consuma APIs REST
- 🌐 Necesites manejar llamadas a servicios web
- 🌐 Requieras gestión de respuestas de red (éxito/error)
- 🌐 Trabajes con datos que vienen de servidores remotos

### Usa VIPER-LocalData cuando:
- 💾 El módulo trabaje con CoreData
- 💾 Necesites guardar/leer de UserDefaults
- 💾 Manejes archivos locales
- 💾 Requieras operaciones CRUD en datos persistentes locales

## Estructura de las Plantillas

### VIPER (Básico)
Genera los siguientes archivos para módulos simples:

- `___FILEBASENAME___VC.swift` - View Controller (capa de Vista)
- `___FILEBASENAME___VC.xib` - Archivo de Interface Builder para el View Controller
- `___FILEBASENAME___Presenter.swift` - Capa Presenter
- `___FILEBASENAME___Interactor.swift` - Capa Interactor (lógica de negocio básica)
- `___FILEBASENAME___Entity.swift` - Entidades/Modelos de datos
- `___FILEBASENAME___Router.swift` - Capa Router (navegación)
- `___FILEBASENAME___Protocols.swift` - Todos los protocolos para comunicación del módulo

### VIPER-RemoteData
Genera los siguientes archivos para módulos con datos remotos:

- `___FILEBASENAME___VC.swift` - View Controller (capa de Vista)
- `___FILEBASENAME___VC.xib` - Archivo de Interface Builder para el View Controller
- `___FILEBASENAME___Presenter.swift` - Capa Presenter
- `___FILEBASENAME___Interactor.swift` - Capa Interactor (lógica de negocio)
- `___FILEBASENAME___Entity.swift` - Entidades/Modelos de datos
- `___FILEBASENAME___Router.swift` - Capa Router (navegación)
- `___FILEBASENAME___Protocols.swift` - Todos los protocolos para comunicación del módulo
- `___FILEBASENAME___RemoteDataManager.swift` - Gestor de datos para operaciones remotas (APIs, web services)

### VIPER-LocalData
Genera los siguientes archivos para módulos con datos locales:

- `___FILEBASENAME___VC.swift` - View Controller (capa de Vista)
- `___FILEBASENAME___VC.xib` - Archivo de Interface Builder para el View Controller
- `___FILEBASENAME___Presenter.swift` - Capa Presenter
- `___FILEBASENAME___Interactor.swift` - Capa Interactor (lógica de negocio)
- `___FILEBASENAME___Entity.swift` - Entidades/Modelos de datos
- `___FILEBASENAME___Router.swift` - Capa Router (navegación)
- `___FILEBASENAME___Protocols.swift` - Todos los protocolos para comunicación del módulo
- `___FILEBASENAME___LocalDataManager.swift` - Gestor de datos para operaciones locales (CoreData, UserDefaults, archivos)

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
2. Copia las carpetas `VIPER.xctemplate`, `VIPER-RemoteData.xctemplate` y `VIPER-LocalData.xctemplate` a:
   ```
   ~/Library/Developer/Xcode/Templates/File Templates/
   ```

## Uso

1. En Xcode, crea un nuevo archivo (`⌘+N`)
2. Selecciona la plantilla apropiada:
   - **"VIPER"** para módulos básicos sin gestión de datos compleja
   - **"VIPER-RemoteData"** para módulos que manejan datos remotos (APIs, servicios web)
   - **"VIPER-LocalData"** para módulos que manejan datos locales (CoreData, UserDefaults, archivos)
3. Ingresa el nombre de tu módulo cuando se solicite
4. Elige la ubicación para tus archivos
5. La plantilla generará todos los archivos VIPER con la funcionalidad correspondiente

## Características

### VIPER (Básico)
- ✅ Implementación completa de arquitectura VIPER
- ✅ Diseño orientado a protocolos
- ✅ Separación de responsabilidades básica
- ✅ Ideal para módulos simples sin gestión de datos compleja
- ✅ Código base limpio y minimalista

### VIPER-RemoteData
- ✅ Implementación completa de arquitectura VIPER
- ✅ Gestor de datos remotos con manejo de APIs
- ✅ Manejo de operaciones asíncronas de red
- ✅ Callbacks para éxito y error en operaciones remotas
- ✅ Simulación de delay de red para testing

### VIPER-LocalData  
- ✅ Implementación completa de arquitectura VIPER
- ✅ Gestor de datos locales (CoreData, UserDefaults, archivos)
- ✅ Operaciones CRUD (Create, Read, Update, Delete)
- ✅ Manejo de persistencia local
- ✅ Callbacks para operaciones de datos locales

### Características Comunes
- ✅ Diseño orientado a protocolos
- ✅ Separación de responsabilidades
- ✅ Código base listo para usar
- ✅ Archivo XIB para diseño de interfaz
- ✅ Optimizado para plataforma iOS

## Requisitos

- Xcode 12.0+
- iOS 13.0+
- Swift 5.0+

## Contribuciones

¡Siéntete libre de enviar issues y solicitudes de mejoras!

## Licencia

Esta plantilla está disponible bajo la licencia MIT.
