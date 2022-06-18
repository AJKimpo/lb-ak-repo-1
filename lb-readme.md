## Liquibase README
Liquibase is a database versioning tool that tracks and applies database changes.

--
### Local Installation
Liquibase -> [Installing Liquibase](https://docs.liquibase.com/install/home.html?__hstc=128893969.b36a17ab25b3f338c3b36a4745332d31.1650395434194.1651274493935.1651303723706.4&__hssc=128893969.1.1651303723706&__hsfp=4140801928&_ga=2.14906805.205991521.1651274494-1494013733.1648648126)  
MySQL -> [Installing and Upgrading MySQL](https://dev.mysql.com/doc/refman/8.0/en/installing.html)  
MySQL driver -> [MySQL Connector/j 8.0.29](https://dev.mysql.com/downloads/connector/j/)  
MySQL CLI -> [Installing MySQL Shell](https://dev.mysql.com/doc/mysql-shell/8.0/en/mysql-shell-install.html)
MySQL Workbench -> [MySQL Workbench](https://www.mysql.com/products/workbench/)

[Using Liquibase with MySQL](https://docs.liquibase.com/install/tutorials/mysql.html)

--
### Changelog File

single file, all changes

specific formatting
- file header
- changeset header
- changeset sql script body
- changeset rollback

changesets

rollback

---
### Properties File

[Specifying Properties in a Connection Profile](https://docs.liquibase.com/concepts/connections/creating-config-properties.html)

- changelog-file
- classpath
- driver
- url
- username
- password  

![image-test](image.png)

---
### CI Pipeline
Liquibase update runs immediately following PR merge containing a changelog.sql change

Ad hoc update

Rollbacks

Status

`liquibase update`  
`liquibase status`  
`liquibase rollback-count @number-var`
