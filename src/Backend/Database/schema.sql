-- USERS
CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    is_admin BIT DEFAULT 0,
    is_manager BIT DEFAULT 0
);

-- STATES
CREATE TABLE states (
    state_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- DEPARTMENTS
CREATE TABLE departments (
    department_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- LOCATIONS
CREATE TABLE locations (
    location_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- LESSONS
CREATE TABLE lessons (
    lesson_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- ITEMS
CREATE TABLE items (
    item_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    state_id INT NOT NULL,
    department_id INT NOT NULL,
    lesson_id INT NOT NULL,
    location_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (state_id) REFERENCES states(state_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (lesson_id) REFERENCES lessons(lesson_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);