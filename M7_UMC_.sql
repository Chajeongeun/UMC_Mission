CREATE TABLE `Users` (
	`id` INT NOT NULL,
	`auth` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`gender` VARCHAR(50) NOT NULL,
	`date` TIMESTAMP NULL,
	`address` VARCHAR(50) NULL,
	`phone` VARCHAR(50) NULL,
	`location` BOOL NOT NULL,
	`market` BOOL NOT NULL,
	`create_at` TIMESTAMP NOT NULL,
	`point` DOUBLE NOT NULL DEFAULT 0,
	`status` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Stores` (
	`id` INT NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`category` VARCHAR(50) NOT NULL,
	`information` VARCHAR(50) NULL,
	`address` VARCHAR(50) NOT NULL,
	`star` FLOAT NULL,
	`create_at` TIMESTAMP NOT NULL,
	`store_time` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `mission` (
	`id` INT NOT NULL,
	`store_id` INT NOT NULL,
	`money` INT NOT NULL,
	`point` INT NOT NULL,
	`status` VARCHAR(50) NOT NULL,
	`create_at` TIMESTAMP NOT NULL,
	`expire_at` TIMESTAMP NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `User_mission` (
	`mission_ind` INT NOT NULL,
	`user_id` INT NOT NULL,
	`mission_id` INT NOT NULL,
	`status` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`mission_ind`)
);

CREATE TABLE `like_fd` (
	`user_id` INT NOT NULL,
	`id2` INT NOT NULL,
	`category` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`user_id`, `id2`),
	FOREIGN KEY (`id2`) REFERENCES `Users` (`id`)
);

CREATE TABLE `Reviews` (
	`id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`store_id` INT NOT NULL,
	`text` VARCHAR(50) NOT NULL,
	`star` INT NULL,
	`create_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `alarms` (
	`id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`cat_alarms` VARCHAR(50) NOT NULL,
	`title` VARCHAR(50) NOT NULL,
	`text` VARCHAR(50) NULL,
	`create_at` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ask` (
	`id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`title` VARCHAR(50) NOT NULL,
	`text` VARCHAR(50) NOT NULL,
	`create_at` TIMESTAMP NOT NULL,
	`status` BOOL NOT NULL DEFAULT TRUE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `point_ch` (
	`id` INT NOT NULL,
	`id2` INT NOT NULL,
	`ch_point` INT NOT NULL,
	`create_at` VARCHAR(50) NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `like_fd` ADD CONSTRAINT `FK_Users_TO_like_fd_1` FOREIGN KEY (`id2`) REFERENCES `Users` (`id`);


use umc_db_m7;

show tables;