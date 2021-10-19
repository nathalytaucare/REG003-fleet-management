/*
  Warnings:

  - You are about to drop the column `authorId` on the `Location` table. All the data in the column will be lost.
  - You are about to alter the column `latitude` on the `Location` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `longitude` on the `Location` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - Added the required column `createdAt` to the `Location` table without a default value. This is not possible if the table is not empty.
  - Added the required column `locations` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Location" DROP CONSTRAINT "Location_authorId_fkey";

-- AlterTable
ALTER TABLE "Location" DROP COLUMN "authorId",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "taxistaId" INTEGER,
ALTER COLUMN "latitude" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "longitude" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "locations" VARCHAR(255) NOT NULL;

-- CreateTable
CREATE TABLE "Taxi" (
    "id" SERIAL NOT NULL,
    "placa" VARCHAR(255) NOT NULL,

    CONSTRAINT "Taxi_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Location" ADD CONSTRAINT "Location_taxistaId_fkey" FOREIGN KEY ("taxistaId") REFERENCES "Taxi"("id") ON DELETE SET NULL ON UPDATE CASCADE;
