import { WebPlugin } from '@capacitor/core';

import type { audiooutputPlugin } from './definitions';

export class audiooutputWeb extends WebPlugin implements audiooutputPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
