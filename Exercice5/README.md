# EXERCICE 5

### Quels sont les tickets émis au mois de mars 2014.
---
### CODE 1

```sql
--- USE beer

SELECT annee, numero_ticket, date_vente
FROM ticket
WHERE DATE_FORMAT(date_vente, "%Y-%m") = "2014-03"

```

### CODE 2

```sql
--- USE beer

SELECT annee, numero_ticket, date_vente 
FROM ticket
WHERE MONTH(date_vente) = 3 AND YEAR(date_vente) = 2014;

```

### CODE 3

```sql
--- USE beer

SELECT annee, numero_ticket, date_vente 
WHERE date_vente LIKE "2014-03-%"

```


### OUTPUT

```text

+-------+---------------+---------------------+
| annee | numero_ticket | date_vente          |
+-------+---------------+---------------------+
|  2014 |           171 | 2014-03-01 00:00:00 |
|  2014 |           172 | 2014-03-02 00:00:00 |
|  2014 |           173 | 2014-03-03 00:00:00 |
|  2014 |           174 | 2014-03-03 00:00:00 |
|  2014 |           175 | 2014-03-03 00:00:00 |
|  2014 |           176 | 2014-03-03 00:00:00 |
|  2014 |           177 | 2014-03-03 00:00:00 |
|  2014 |           178 | 2014-03-05 00:00:00 |
|  2014 |           179 | 2014-03-06 00:00:00 |
\\-----\\---------------\\-------------------\\
|  2014 |           239 | 2014-03-29 00:00:00 |
|  2014 |           240 | 2014-03-30 00:00:00 |
|  2014 |           241 | 2014-03-30 00:00:00 |
|  2014 |           242 | 2014-03-30 00:00:00 |
|  2014 |           243 | 2014-03-31 00:00:00 |
|  2014 |           244 | 2014-03-31 00:00:00 |
|  2014 |           245 | 2014-03-31 00:00:00 |
|  2014 |           246 | 2014-03-31 00:00:00 |
|  2014 |           247 | 2014-03-31 00:00:00 |
|  2014 |           248 | 2014-03-31 00:00:00 |
+-------+---------------+---------------------+
78 rows in set (0.00 sec)

```