/*
  Warnings:

  - A unique constraint covering the columns `[url]` on the table `Urls` will be added. If there are existing duplicate values, this will fail.
  - Made the column `updatedAt` on table `Mapmodal` required. This step will fail if there are existing NULL values in that column.
  - Made the column `city` on table `Mapmodal` required. This step will fail if there are existing NULL values in that column.
  - Made the column `country` on table `Mapmodal` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Errordata" ALTER COLUMN "url" SET DATA TYPE VARCHAR(550);

-- AlterTable
ALTER TABLE "Mapmodal" ALTER COLUMN "updatedAt" SET NOT NULL,
ALTER COLUMN "city" SET NOT NULL,
ALTER COLUMN "country" SET NOT NULL;

-- AlterTable
ALTER TABLE "Urls" ADD COLUMN     "re_count" INTEGER NOT NULL DEFAULT 0;

-- CreateIndex
CREATE INDEX "Mapmodal_city_keyword_Keyid_idx" ON "Mapmodal"("city", "keyword", "Keyid");

-- CreateIndex
CREATE UNIQUE INDEX "Urls_url_key" ON "Urls"("url");

-- CreateIndex
CREATE INDEX "Urls_Keyid_city_idx" ON "Urls"("Keyid", "city");
