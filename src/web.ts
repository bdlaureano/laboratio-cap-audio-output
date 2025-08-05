import { WebPlugin } from '@capacitor/core';

import type { audiooutputPlugin } from './definitions';

export class audiooutputWeb extends WebPlugin implements audiooutputPlugin {
  async switchToSpeaker(): Promise<void> {
    console.warn('switchToSpeaker() no está disponible en Web.');
  }

  async switchToEarpiece(): Promise<void> {
    console.warn('switchToEarpiece() no está disponible en Web.');
  }
}
