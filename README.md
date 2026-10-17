## Info
A project template at first for projects using c++ for core logic and the qt library with html, css and javascript for the interface along with postgres for the database.

Run and host from the project root with c++ and postgres for database, lua as scripting language to avoid compiling when making changes, html, css and javascript for ui and optionaly a framework and use resources/modules to reuse functionaliteis across different projects and for the structure.

The projects tech stack and structure
└── MyApp/
    ├── CMakeLists.txt
    │
    ├── src/
    │   ├── main.cpp
    │   ├── backend.cpp
    │   └── backend.h
    │
    ├── qml/
    │   └── main.qml          ← creates window + Qt WebView
    │
    └── web/
        ├── index.html        ← UI structure
        ├── styles.css         ← UI design
        └── app.js            ← UI logic

## Setup

### Requirements

Install the following before building:

- Git
- CMake
- GCC / MinGW-w64
- `mingw32-make`
- vcpkg

Verify:

```powershell
git --version
cmake --version
gcc --version
g++ --version
mingw32-make --version
```

### Install vcpkg

vcpkg only needs to be installed once:

```powershell
cd C:\dev

git clone https://github.com/microsoft/vcpkg.git

cd vcpkg

.\bootstrap-vcpkg.bat
```

Set the `VCPKG_ROOT` environment variable to:

```text
C:\dev\vcpkg
```

Verify:

```powershell
vcpkg version
```

### Clone the project

```powershell
git clone <repository-url>
cd MyApp
```

### Project dependencies

C++ dependencies are declared in:

```text
vcpkg.json
```

Currently:

```text
qtbase
qtdeclarative
```

These provide Qt Core, GUI, QML, Qt Quick and Qt Quick Controls required by the application.

### Install dependencies

From the project root:

```powershell
vcpkg install --triplet x64-mingw-dynamic
```

vcpkg installs the dependencies into the project's:

```text
vcpkg_installed/
```

Alternatively, when using the provided CMake preset, CMake can automatically ask vcpkg to install missing dependencies during configuration.

### Configure

```powershell
cmake --preset gcc
```

The project uses:

```text
Compiler:   GCC / MinGW-w64
Generator:  MinGW Makefiles
vcpkg:      x64-mingw-dynamic
```

### Build

```powershell
cmake --build build
```

### Run

After a successful build:

```powershell
.\build\MyApp.exe
```

## Development workflow

After initially setting up the project, the normal workflow is simply:

```powershell
cmake --preset gcc
cmake --build build
.\build\MyApp.exe
```

If `vcpkg.json` changes, install/update the dependencies with:

```powershell
vcpkg install --triplet x64-mingw-dynamic
```