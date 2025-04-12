# String Calculator - Rails App (TDD Driven)

This is a minimalist Ruby on Rails application built to demonstrate a **Test-Driven Development (TDD)** approach using **RSpec**. The core functionality implemented is a `StringCalculator` class that computes the sum of numbers in a string input, supporting flexible delimiters, error handling, and edge cases — all without using a database or ActiveRecord.

---

## 🚀 Tech Stack

- **Ruby version**: 3.2.2
- **Rails version**: 8.0.2
- **Testing**: RSpec
- **No database or ActiveRecord used**

---

## 🧠 String Calculator Features

Implemented TDD-style using `RSpec`, the `StringCalculator.add(input)` method supports:

- ✅ Sum of comma-separated numbers
- ✅ Handles newlines between numbers (e.g., `"1\n2,3"`)
- ✅ Supports custom delimiters (e.g., `"//;\n1;2"`)
- ✅ Throws an exception for negative numbers with a list of all negatives
- ✅ Extendable to support multi-character 

---

## 🔧 Setup Instructions

### System Dependencies

- Ruby 3.2.2 (install via RVM or rbenv)
- Bundler

### Installing Dependencies

```bash
bundle install
```

### To run Rspec suite
```bash
bundle exec rspec
```

### Folder structure

<pre>
app/
└── services/
    └── string_calculator.rb

spec/
└── services/
    └── string_calculator_spec.rb
 </pre>
