// insert-user.js

// insert INTO 'users' ('name') VALUES 
// ('fulano')
// ('beltrano')
// ('ciclano')

const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function main() {
    const data = [
    { name: "fulano" },
    { name: "beltrano" },
    { name: "ciclano" }
    ];
    await prisma.user.createMany({ data });
    console.log("cadastro realizado com sucesso!");
    }

main();