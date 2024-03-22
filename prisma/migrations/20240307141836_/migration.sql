/*
  Warnings:

  - You are about to drop the column `content` on the `Mapmodal` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Mapmodal" DROP COLUMN "content",
ADD COLUMN     "review" TEXT,
ALTER COLUMN "updatedAt" DROP NOT NULL;
