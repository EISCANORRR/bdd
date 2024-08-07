-- CreateTable
CREATE TABLE `Music` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `artistas` VARCHAR(191) NOT NULL,
    `album` VARCHAR(50) NOT NULL,
    `generos` VARCHAR(191) NOT NULL,
    `single` BOOLEAN NOT NULL,
    `ano_lancamento` YEAR NOT NULL,
    `duracao` TIME NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Usuario` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `user` VARCHAR(191) NOT NULL,
    `type` ENUM('User', 'Admin') NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `data_nascimento` DATE NOT NULL,
    `data_cadastro` TIMESTAMP NOT NULL,

    UNIQUE INDEX `Usuario_user_key`(`user`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Produto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT NOT NULL,
    `preco` DECIMAL(10, 2) NOT NULL,
    `estoque` INTEGER NULL,
    `avaliacao` DECIMAL(3, 2) NOT NULL,
    `data_cadastro` TIMESTAMP NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
