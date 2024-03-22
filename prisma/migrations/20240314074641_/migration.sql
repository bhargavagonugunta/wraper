/*
  Warnings:

  - Added the required column `Keyid` to the `Mapmodal` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Mapmodal" ADD COLUMN     "Keyid" INTEGER NOT NULL;
