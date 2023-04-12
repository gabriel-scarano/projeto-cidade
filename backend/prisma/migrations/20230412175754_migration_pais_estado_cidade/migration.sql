-- CreateTable
CREATE TABLE `paises` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(60) NOT NULL,
    `nome_pt` VARCHAR(60) NOT NULL,
    `sigla` VARCHAR(2) NOT NULL,
    `bacen` INTEGER NOT NULL,

    UNIQUE INDEX `paises_nome_key`(`nome`),
    UNIQUE INDEX `paises_nome_pt_key`(`nome_pt`),
    UNIQUE INDEX `paises_sigla_key`(`sigla`),
    UNIQUE INDEX `paises_bacen_key`(`bacen`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `estados` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(75) NOT NULL,
    `uf` VARCHAR(2) NOT NULL,
    `ibge` INTEGER NOT NULL,
    `id_pais` INTEGER NOT NULL,
    `ddd` VARCHAR(50) NOT NULL,

    UNIQUE INDEX `estados_nome_key`(`nome`),
    UNIQUE INDEX `estados_uf_key`(`uf`),
    UNIQUE INDEX `estados_ibge_key`(`ibge`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cidades` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(120) NOT NULL,
    `id_uf` INTEGER NOT NULL,
    `ibge` INTEGER NOT NULL,

    UNIQUE INDEX `cidades_nome_key`(`nome`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `estados` ADD CONSTRAINT `estados_id_pais_fkey` FOREIGN KEY (`id_pais`) REFERENCES `paises`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cidades` ADD CONSTRAINT `cidades_id_uf_fkey` FOREIGN KEY (`id_uf`) REFERENCES `estados`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
