-- CreateTable
CREATE TABLE "Urls" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "keyword" TEXT NOT NULL,
    "url" VARCHAR(255) NOT NULL,
    "Keyid" INTEGER NOT NULL,
    "isfetch" BOOLEAN NOT NULL DEFAULT false,
    "status" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Urls_pkey" PRIMARY KEY ("id")
);
