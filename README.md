# Micro-CRM

## About the project
This project is all about managing an Micro CRM for Company and it's employee management system.





## Features
This project is responsible for handling and managing company and employee details.

- Database Migrations
- Database Factory
- Database Seeder
- Authentication
- Company Create Update Delete and View details
- Employee Create Update Delete and View details
- Pagination Implementation
- Database RelationShip

---

## Preview

- Login Screen
![Login](https://i.imgur.com/AvhEJ23.png)

- Home Page
![Home Page](https://i.imgur.com/Qmght3L.png)

- Company Page
![Company Page](https://i.imgur.com/2tRETqP.png)

- Company Create Page
![Company Create Page](https://i.imgur.com/wbobXtM.png)

- Company View Page
![Company View Page](https://i.imgur.com/X5OApFP.png)

- Company Update Page
![Company Update Page](https://i.imgur.com/olBVLd8.png)

- Employees Page
![Employees Page](https://i.imgur.com/X80vMaP.png)

- Employees Create Page
![Employees Create Page](https://i.imgur.com/gHX7QKc.png)

- Employees View Page
![Employees View Page](https://i.imgur.com/9xPo4YR.png)

- Employees Update Page
![Employees Update Page](https://i.imgur.com/ui2uygg.png)


- Employees List Page with Pagination
![Employees List Page with Pagination](https://i.imgur.com/YgMTAQO.png)


---

## Installation Process

### Clone this repo via below command,
```
git clone https://github.com/vikas-ukani/Micro-CRM
```

### Copy .env file from .env.example
```
cp .env.example .env
```

### Edit .env  and Set Database Configurations.
```
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=company-crm
DB_USERNAME=root
DB_PASSWORD=root
```

### Install Packages
```
composer install 
```

- You can find the `company-crm.sql` database inside `database` directory. 
### Generate app key
```
php artisan key:generate
```
### Link Image storage directory to public and allow permissions.
```
php artisan storage:link
```

### Migrate database
```
php artisan migrate
```

OR with `--seed` flag to seed the database

```
php artisan migrate --seed
```

### Seed Data
```
php artisan db:seed
```

- It will create categories and random books factory data to testing more.

### Run the Project
```
php artisan serve
```


### Run Node modules and generate bootstrap css
```
npm install && npm run dev
```