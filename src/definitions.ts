export interface audiooutputPlugin {
  switchToSpeaker(): Promise<void>;
  switchToEarpiece(): Promise<void>;
}
