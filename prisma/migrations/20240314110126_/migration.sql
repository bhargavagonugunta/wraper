-- CreateTable
CREATE TABLE "Errordata" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "keyword" TEXT NOT NULL,
    "url" VARCHAR(450) NOT NULL,
    "Keyid" INTEGER NOT NULL,
    "solved" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Errordata_pkey" PRIMARY KEY ("id")
);
