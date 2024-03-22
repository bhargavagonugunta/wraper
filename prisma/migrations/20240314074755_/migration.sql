/*
  Warnings:

  - You are about to alter the column `url` on the `Mapmodal` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(450)`.

*/
-- AlterTable
ALTER TABLE "Mapmodal" ALTER COLUMN "url" SET DATA TYPE VARCHAR(450);
