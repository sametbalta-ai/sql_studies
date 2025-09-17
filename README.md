# SQL Studies

This repository contains the practice projects I created while learning **PostgreSQL**.  
Each application is stored in a separate folder (e.g. `etrade`, later more will be added).

## Folder Structure
sql_studies/
├─ etrade/
│  ├─ schema.sql     # Table definitions
│  ├─ seed.sql       # Sample data
│  └─ queries.sql    # Example queries
└─ README.md

## How to Use

1. **Create the database** (for example `etrade`):
   ```bash
   createdb etrade

2. **Apply the schema**
```bash
psql -d etrade -f etrade/schema.sql
```
3. **Insert sample data**
```bash
psql -d etrade -f etrade/seed.sql
```
4. **Run example queries**
```bash
psql -d etrade -f etrade/queries.sql
```
## Notes

- Each folder is an independent practice project.

- You can reset a project by dropping the database and re-running the scripts.

- SQL files are written to be repeatable and shareable.

- Example queries cover SELECT, WHERE, AND/OR, BETWEEN, DISTINCT, ORDER BY, LIMIT and will expand as learning progresses.