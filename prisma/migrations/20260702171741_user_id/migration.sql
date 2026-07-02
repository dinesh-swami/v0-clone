/*
  Warnings:

  - You are about to drop the column `clearId` on the `users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[clerkId]` on the table `users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `clerkId` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "users_clearId_key";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "clearId",
ADD COLUMN     "clerkId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "users_clerkId_key" ON "users"("clerkId");
