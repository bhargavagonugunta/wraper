import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
export const FindandGet = async () => {
  try {
    const data = await prisma.mapmodal.findMany({
      orderBy: {
        id: "asc",
      },
    });
    return data;
  } catch (e) {
    console.error(e);
  }
};

export const countdata = async () => {
  try {
    const query = await prisma.mapmodal.count();

    console.log("Query");
    return query;
  } catch (e) {
    console.log(e);
    return false;
  }
};

export const findlast = async () => {
  try {
    const query = await prisma.mapmodal.findFirst({
      orderBy: {
        createdAt: "desc",
      },
    });
    console.log("Query");
    return query;
  } catch (e) {
    console.log(e);
    return false;
  }
};

export const fetchedUrls = async () => {
  try {
    const result = await prisma.urls.findMany({
      where: {
        status: false,
      },
      orderBy: {
        id: "asc",
      },
      take: 20,
    });
    return result;
  } catch (e) {
    console.error(e);
    return false;
  }
};


export const fetchedUrlsRe = async () => {
  try {
    const result = await prisma.urls.findMany({
      where: {
        status: false,
      },
      orderBy: {
        id: "desc",
      },
      take: 20,
    });
    return result;
  } catch (e) {
    console.error(e);
    return false;
  }
};
