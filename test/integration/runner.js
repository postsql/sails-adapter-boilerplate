/**
 * Run Integration Tests
 *
 * Uses the waterline-adapter-tests module to
 * run mocha tests against the currently implemented
 * waterline API.
 */

var tests = require('waterline-adapter-tests'),
    adapter = require('../../lib/adapter'),
    mocha = require('mocha');

/**
 * Build a Postgres Config File
 */

var config = {
  host: 'localhost',
  user: 'hannu',
  password: 'hannu',
  database: 'sailspg',
  port: 5436
};

/**
 * Run Tests
 */

var suite = new tests({ adapter: adapter, config: config });
