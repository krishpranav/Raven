# 🕊️ Raven Web Framework

**Raven** is a modular and high-performance web framework crafted with elegance and speed in mind. Built entirely in **Swift**, Raven leverages the modern capabilities of Apple's ecosystem to deliver native performance and an intuitive developer experience.

The project is split into two core components:

- `raven-backend`: The powerful server-side engine.
- `raven-frontend`: The lightweight, expressive front-end interface.

This repository is organized to ensure clean separation of concerns, better maintainability, and developer-friendly tooling.

---

## 🗂️ Project Structure

```
.
├── raven-backend/        # Backend logic and server implementation
│   ├── raven-backend/    # Backend source code and documentation
│   │   ├── raven_backend.docc/         # Documentation for backend
│   │   ├── raven_backend.h             # Public interface
│   └── raven-backend.xcodeproj/        # Xcode project for backend
│       ├── project.pbxproj
│       ├── project.xcworkspace/
│       └── xcuserdata/
└── raven-frontend/       # Frontend rendering logic and components
    ├── raven-frontend/   # Frontend source code and documentation
    │   ├── raven_frontend.docc/        # Documentation for frontend
    │   ├── raven_frontend.h            # Public interface
    └── raven-frontend.xcodeproj/       # Xcode project for frontend
        ├── project.pbxproj
        ├── project.xcworkspace/
        └── xcuserdata/
```

Each module contains:

- `.docc` documentation folder
- `.h` interface header (bridging or public interface)
- Xcode project files (`.xcodeproj`, workspace, schemes, etc.)

---

## 🚀 Getting Started

> Prerequisites: Xcode 15+, Swift 5.9+

1. Clone the repo:
   ```bash
   git clone https://github.com/krishpranav/Raven.git
   cd Raven
   ```

2. Open either the backend or frontend project in Xcode:
   ```bash
   open raven-backend/raven-backend.xcodeproj
   # or
   open raven-frontend/raven-frontend.xcodeproj
   ```

3. Build and run directly from Xcode.

---

## 🧪 Testing

Raven encourages test-driven development. You can run all unit and integration tests via:

```bash
swift test
```

Or from within Xcode using the Test navigator.

---

## 🤝 Contributing

We welcome contributions! Please fork the repository and open a pull request with a clear description of your changes.

- Follow SwiftLint style guidelines
- Write documentation for new modules in `.docc`
- Keep PRs focused and atomic

---

## 📄 License

Raven is released under the MIT License.

---

## ✨ Credits

Crafted with love and Swift by Krisna Pranav and contributors. 🖤
