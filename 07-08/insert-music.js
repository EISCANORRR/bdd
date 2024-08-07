const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function main() {
    const data = [
    { title: "Music for childs" },
    { artistas: ('Mano', 'Junin', 'Nick') },
    { album: "Nome maneiro" },
    { generos: ('rock', 'metal', 'hip-hop') },
    { single: false },
    { ano_lancamento: new Date('2024-08-07T10:00:00Z') },
    { duracao: new Time('10:00:00Z') }
    ];
    await prisma.user.createMany({ data });
    console.log("cadastro realizado com sucesso!");
    }

main();