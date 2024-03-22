import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
export const createmaprf = async (data: any) => {
  try {
    const query = await prisma.mapmodal.createMany({
      data: data,
    });
    console.log("Query");
    return true;
  } catch (e) {
    console.log(e);
    return false;
  }
};
export const createerror = async (data: any) => {
  try {
    const query = await prisma.errordata.create({
      data: data,
    });
    console.log("error Query");
    return true;
  } catch (e) {
    console.log(e);
    return false;
  }
};

export const crateurlrecord = async (data:any) => {
  try {
    const query = await prisma.urls.createMany({
      data: data,
    });
    console.log("Query");
    return true;
  } catch (e) {
    console.log(e);
    return false;
  }
};

export const updateurlrecord = async (data: number) => {
  try {
    const query = await prisma.urls.update({
      where: {
        id: data,
      },
      data: {
        status: true,
      },
    });
    console.log("Query to update");
    return true;
  } catch (e) {
    console.log(e);
    return false;
  }
};
