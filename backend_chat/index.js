const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

var clients = {};
io.on('connection', (socket) => {
    console.log("A user connected");
    console.log(socket.id, " has joined");
    socket.on("/signin",(id)=>{
        console.log(id);
        clients[id] = socket;
        console.log(clients);
    });
    socket.on("message",(msg) => {
        console.log(msg);
        let targetId=msg.targetId;
        if(clients[targetId]) clients[targetId].emit("message",msg);
    });
});

server.listen(3000, () => {
    console.log('listening on *:3000');
});

