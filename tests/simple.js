import http from 'k6/http';
import { sleep, check } from 'k6';
import exec from 'k6/x/exec';

// A simple counter for http requests

// you can specify stages of your test (ramp up/down patterns) through the options object
// target is the number of VUs you are aiming for

export const options = {
  vus: 1,
  duration: '2s',
};

export default function () {
  console.log('date here: ' + exec.command('date'));
  // our HTTP request, note that we are saving the response to res, which can be accessed later

  const res = http.get('http://test.k6.io');

  sleep(1);

  const checkRes = check(res, {
    'status is 200': (r) => r.status === 200,
  });
}
