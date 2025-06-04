## 📦 multi\_expansion\_card

A customizable Flutter widget that allows multiple expansion tiles/cards with flexible control over expansion states. Ideal for building collapsible lists or accordions with enhanced UI and better user experience.


---

### ✨ Features

* Expand/collapse multiple cards independently
* Smooth animations
* Customize card title, content, and style
* Easy to integrate and use

---

### 🚀 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  multi_expansion_card: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

### 💡 Usage

```dart
import 'package:multi_expansion_card/multi_expansion_card.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multi Expansion Cards')),
      body:  MultipleExpansionCard(
            titles: [
              Text('Card 1'),
              Text('Card 2'),
            ],
            childrens: [
              Text('Content 1'),
              Text('Content 2'),
            ],
            initialExpanded: {0: true},
          ),
    );
  }
}
```

---

### 📁 Example

For a complete working example, see the [`example/`](https://github.com/AdeebAnvar/multi_Expansion_card/tree/main/example) directory in this repo.

---

### 🧪 Running Tests

```bash
flutter test
```

---

### 🛠️ Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check [issues page](https://github.com/AdeebAnvar/multi_Expansion_card/issues) or submit a pull request.

---

### 💖 Support

If you find this package useful, please consider supporting development by buying me a coffee:

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-%23FFDD00?logo=buy-me-a-coffee\&logoColor=black)](https://www.buymeacoffee.com/adeebanvar)

---

### 📄 License

This project is licensed under the MIT License.

```
MIT License

Copyright (c) 2024 Adeeb Anvar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
