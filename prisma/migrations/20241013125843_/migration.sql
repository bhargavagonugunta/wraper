/*
  Warnings:

  - You are about to drop the `Keys` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `city` to the `Mapmodal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country` to the `Mapmodal` table without a default value. This is not possible if the table is not empty.
  - Made the column `updatedAt` on table `Mapmodal` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX "Errordata_url_key";

-- DropIndex
DROP INDEX "Mapmodal_Keyid_keyword_idx";

-- AlterTable
ALTER TABLE "Errordata" ALTER COLUMN "url" SET DATA TYPE VARCHAR(550);

-- AlterTable
ALTER TABLE "Mapmodal" ADD COLUMN     "city" TEXT NOT NULL,
ADD COLUMN     "country" TEXT NOT NULL,
ALTER COLUMN "updatedAt" SET NOT NULL;

-- AlterTable
ALTER TABLE "Urls" ADD COLUMN     "re_count" INTEGER NOT NULL DEFAULT 0;

-- DropTable
DROP TABLE "Keys";

-- CreateIndex
CREATE INDEX "Mapmodal_city_keyword_Keyid_idx" ON "Mapmodal"("city", "keyword", "Keyid");

-- CreateIndex
CREATE INDEX "Urls_Keyid_city_idx" ON "Urls"("Keyid", "city");
