export interface audiooutputPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
