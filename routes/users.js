// const router = require('express').Router();
// const { PrismaClient } = require('@prisma/client');
// // const { user } = new PrismaClient();
// const prisma = new PrismaClient();

// router.get('/', async (req, res) => {
//     let users = await prisma.user.findMany({
//         select: {
//             name: true,
//             email: true,

//         }
//     })

//     res.json(users)
// })

// router.post('/', async (req, res) => {
//     const { name,email, password } = req.body;

//     const userExists = await prisma.user.findUnique({
//         where: {
//             name
            
//         },
//         select: {
//             name: true,
//             email: true,
//             password: true,
          
//         }
//       })

//     if(userExists) {
//         return res.status(400).json({
//             msg: "user already exists"
//         })
//     }

//     let newUser = await prisma.user.create({
//         data: {
//             name,
//             email,
//             password,           
        
//         }
//     })

//     res.json(newUser)
// });

// module.exports = router
