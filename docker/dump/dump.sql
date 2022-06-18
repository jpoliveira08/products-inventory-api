
CREATE TABLE IF NOT EXISTS `inventory`.`products` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `sku` VARCHAR(45) NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `amount` INT(11) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `inventory`.`categories` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `inventory`.`product_category` (
    `product_id` INT NOT NULL,
    `category_id` INT NOT NULL,
	FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	PRIMARY KEY (`product_id`, `category_id`)
);


