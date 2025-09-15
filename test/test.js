const request = require('supertest');
const app = require('../index.js'); // just the app, no server.listen()

describe('GET /', function () {
  it('respond with hello world', function (done) {
    request(app)
      .get('/')
      .expect(200) // check status code as well
      .expect('Hello World!', done);
  });
});
