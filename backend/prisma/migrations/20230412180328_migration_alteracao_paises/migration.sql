-- DropIndex
DROP INDEX `cidades_id_uf_fkey` ON `cidades`;

-- DropIndex
DROP INDEX `estados_id_pais_fkey` ON `estados`;

-- AlterTable
ALTER TABLE `paises` MODIFY `sigla` VARCHAR(2) NULL;

-- AddForeignKey
ALTER TABLE `estados` ADD CONSTRAINT `estados_id_pais_fkey` FOREIGN KEY (`id_pais`) REFERENCES `paises`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cidades` ADD CONSTRAINT `cidades_id_uf_fkey` FOREIGN KEY (`id_uf`) REFERENCES `estados`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
