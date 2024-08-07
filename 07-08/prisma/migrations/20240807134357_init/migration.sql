/*
  Warnings:

  - You are about to alter the column `data_cadastro` on the `produto` table. The data in that column could be lost. The data in that column will be cast from `Timestamp(0)` to `Timestamp`.
  - You are about to alter the column `data_cadastro` on the `usuario` table. The data in that column could be lost. The data in that column will be cast from `Timestamp(0)` to `Timestamp`.

*/
-- AlterTable
ALTER TABLE `produto` MODIFY `data_cadastro` TIMESTAMP NOT NULL;

-- AlterTable
ALTER TABLE `usuario` MODIFY `data_cadastro` TIMESTAMP NOT NULL;
