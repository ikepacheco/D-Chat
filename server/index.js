
import logger from 'morgan'
import { Server } from 'socket.io'

import express from 'express';
import { createServer } from 'node:http';

import mysql from 'mysql'

var config = {
    host: 'localhost',
    database: 'messages',
    user: 'demon',
    password: '123',
    charset: 'utf8mb4' // Asegura que la conexión use utf8mb4
}

class Database {
    constructor(config) {
        this.connection = mysql.createConnection(config);
    }

    connect() {
        this.connection.connect((err) => {
            if (err) {
                console.error('Error connecting to database:', err);
                return;
            }
            console.log('Connected to database');
        });
    }

    disconnect() {
        this.connection.end((err) => {
            if (err) {
                console.error('Error disconnecting from database:', err);
                return;
            }
            console.log('Disconnected from database');
        });
    }

    query(sql, params, callback) {
        this.connection.query(sql, params, (err, result) => {
            if (err) {
                console.error('Error executing query:', err);
                callback(err, null);
                return;
            }
            callback(null, result);
        });
    }// Método para insertar datos
    insert(table, data, callback) {
        const sql = `INSERT INTO ${table} SET ?`;
        this.connection.query(sql, data, (err, result) => {
            if (err) {
                console.error('Error executing insert query:', err);
                callback(err, null);
                return;
            }
            callback(null, result);
        });
    }

    // Método para actualizar datos
    update(table, data, condition, callback) {
        const sql = `UPDATE ${table} SET ? WHERE ?`;
        this.connection.query(sql, [data, condition], (err, result) => {
            if (err) {
                console.error('Error executing update query:', err);
                callback(err, null);
                return;
            }
            callback(null, result);
        });
    }
}

const DB = new Database(config);
DB.connect();

const port = process.env.PORT ?? 81

const app = express()
const server = createServer(app)

const io = new Server(server)

io.on('connection', (socket) => {
    console.log('User connected')
    socket.on('disconnect', () => {
        console.log('User disconnected');
    })

    socket.on('chat message', (msg, _user) => {
        try {
            const newMessage = {
                user: _user,
                message: msg
            };
            DB.insert('message', newMessage, (err, result) => {
                if (err) {
                    console.error('Error inserting data:', err);
                    return;
                }

                console.log('Message: ' + msg)
                console.log('ResultsId: ' + result.insertId)
                io.emit('chat message', result.insertId, _user, msg);

                console.log('Inserted data successfully:', result);
            });
        } catch (e) {
            console.error(e)
            return
        }
    })
    if (!socket.recovered) {
        try {
            //DB.query('SELECT * FROM message where Id > ?', [socket.handshake.auth.serverMsgOffset ?? 0], (err, result) => {
            DB.query('SELECT * FROM (SELECT * FROM message ORDER BY Id DESC LIMIT 250) AS subqueryORDER ORDER BY id ASC;', [socket.handshake.auth.serverMsgOffset ?? 0], (err, result) => {
                if (err) {
                    console.error('Error executing query:', err);
                    return;
                }
                result.forEach(element => {
                    socket.emit('chat message', element.insertId, element.user, element.message)
                });
                console.log('Result:', result);
            });

        } catch (e) {
            console.error(e)
            return
        }
    }
})

app.use(logger('dev'))

app.get('/', (req, res) => {
    res.sendFile(process.cwd() + '/client/index.html')
})

server.listen(port, () => {
    console.log(`Server runining on port ${port}`)
})