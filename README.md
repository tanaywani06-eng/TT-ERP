# TT ERP — Full Local ERP MVP

This project is a runnable local ERP foundation named **TT ERP** for Windows and VS Code. It uses FastAPI + SQLAlchemy + SQLite by default, so PostgreSQL setup is not required. The database is created automatically at `backend/tt_erp.db`.

## Run in VS Code
1. Extract the ZIP to a normal folder.
2. Open the `TT-ERP` folder in VS Code.
3. Open **Terminal → New Terminal**.
4. Run `\.\start.bat` (PowerShell command: `./start.bat`).
5. Wait for `Uvicorn running on http://127.0.0.1:8000`. Keep the terminal open.
6. Open `http://127.0.0.1:8000`. API docs: `http://127.0.0.1:8000/docs`.

## Working modules
Dashboard; Customers; Vendors; Inventory; Sales; Purchases; Production; Packing; DPR; Dispatch; Quality; Employees; Accounting; Maintenance; QR Labels; Reports & Excel; voice navigation; system diagnostics.

All listed business modules currently use a shared flexible record model with add/edit/delete/search, CSV/XLSX export, and CSV/XLSX import. Import uses common columns such as `code`, `name`, `details`, `amount`, and `status`; rows without a name/description are skipped.

## What is not production-complete yet
This is a usable local ERP MVP, not a finished enterprise-grade SAP replacement. Advanced domain workflows still need to be implemented separately: accounting ledgers and GST compliance, stock valuation and lot/roll tracking, BOM/MRP, approval workflows, audit trails, role-based permissions, secure multi-user deployment, QR/barcode label printing, and a connected AI provider. Voice is browser-based navigation, not a fully autonomous AI agent. Do not use it as the sole system of record for regulated financial or production operations until these workflows are tested and hardened.

## Troubleshooting
- If the browser says connection refused, check the VS Code terminal; the server must be running.
- If `start.bat` cannot install packages, confirm Python and internet access.
- Data file: `backend\tt_erp.db`. Back it up before importing or deleting records.
