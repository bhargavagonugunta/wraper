/*
  Warnings:

  - A unique constraint covering the columns `[url]` on the table `Errordata` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[url]` on the table `Urls` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateTable
CREATE TABLE "Keys" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "keyId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Keys_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Keys_name_key" ON "Keys"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Errordata_url_key" ON "Errordata"("url");

-- CreateIndex
CREATE INDEX "Mapmodal_Keyid_keyword_idx" ON "Mapmodal"("Keyid", "keyword");

-- CreateIndex
CREATE UNIQUE INDEX "Urls_url_key" ON "Urls"("url");
