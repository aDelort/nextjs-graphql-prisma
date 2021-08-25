-- CreateTable
CREATE TABLE "Author" (
    "id" serial NOT NULL,
    "name" text NOT NULL,
    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Post" (
    "id" serial NOT NULL,
    "title" text NOT NULL,
    "body" text NOT NULL,
    "published" boolean NOT NULL,
    "authorId" integer NOT NULL,
    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Post"
    ADD FOREIGN KEY ("authorId") REFERENCES "Author" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

