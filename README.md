# Robot Framework Banking Project Automation With Sample STLC Documents

[![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot%20Framework-6.x-orange.svg)](https://robotframework.org/)
[![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-latest-green.svg)](#)

Automation Testing project for the **[GlobalSQA Banking Project demo site](https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login)** using **Robot Framework** with the **Page Object Model (POM)** design pattern.

This repository also includes **Software Testing Life Cycle (STLC) documentation**, detailed **test cases** for both **Customer** and **Manager** flows, and auto-generated **reports/logs**.

---

## Features

* **Page Object Model (POM)** for maintainable and scalable test structure
* Automated **Customer Flow**: Login, Deposit, Withdraw, View Transactions, Logout
* Automated **Manager Flow**: Add Customer, Open Account, Search Customer, Delete Customer
* Integrated **STLC documents** (Test Plan, Test Environment Setup, Test Scenarios, Test Cases, Test Execution, Defect Report, Traceability Matrix)
* **Robot Framework auto-generated reports and logs**
* Tag-based execution for **Smoke** and **Regression** tests

---

## Installation & Setup

1. Clone the repository

   ```
   git clone https://github.com/DyoNheL/robotframework-banking-stlc.git
   ```
2. Install libraries

   ```
   pip install -r requirements.txt
   ```

---

## Running Tests

### Run all tests

```
robot -d reports tests/
```

### Run only **Customer Flow** tests

```
robot -d reports -i Customer tests/
```

### Run only **Manager Flow** tests

```
robot -d reports -i Manager tests/
```

### Run **Smoke Tests**

```
robot -d reports -i Smoke tests/
```

### Run **Regression Tests**

```
robot -d reports -i Regression tests/
```

---

## Reports & Logs

After execution, reports and logs will be available in the `reports/` folder:

* `report.html` – Execution summary
* `log.html` – Detailed step-by-step logs

---

## Credits

* Test Site: **[GlobalSQA Banking Project](https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login)**
* Creator: [Masum Raza](https://github.com/masumrazait/DemoAutomationBank)

---
