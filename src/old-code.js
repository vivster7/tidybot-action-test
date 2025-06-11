// tidybot: delete this function on 2024-01-01
function veryOldFunction() {
  console.log('This function should have been deleted on Jan 1, 2024');
  return 'deprecated';
}

// TODO(tidybot): Delete this code on Jan 15, 2023
class LegacyHandler {
  constructor() {
    this.deprecated = true;
  }
  
  process() {
    // This is very old code from 2023
    return null;
  }
}

// This function has no pragma - should be kept
function currentFunction() {
  return 'I am current!';
}

// tidybot: delete this function on 2025-12-31
function futureFunction() {
  console.log('Delete me at the end of 2025');
  return 'still valid';
}