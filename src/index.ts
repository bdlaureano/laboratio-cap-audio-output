import { registerPlugin } from '@capacitor/core';

import type { audiooutputPlugin } from './definitions';

const audiooutput = registerPlugin<audiooutputPlugin>('audiooutput', {
  web: () => import('./web').then((m) => new m.audiooutputWeb()),
});

export * from './definitions';
export { audiooutput };
