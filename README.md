# AHK-Key-Swap-and-Language-Switch

Lightweight AutoHotkey v2 scripts for fast language switching and helpful key tweaks.

## Scripts

### `scripts/KeySwap-LanguageSwitch.ahk`

**Physical bottom-left keys** (left → right): <kbd>LWin</kbd>, <kbd>LAlt</kbd>, <kbd>LCtrl</kbd>.

- <kbd>Caps Lock</kbd>: switch input language
- <kbd>Shift</kbd>+<kbd>Caps Lock</kbd>: toggle real Caps Lock
- **Remaps:**
  - <kbd>LCtrl</kbd> → <kbd>LWin</kbd>
  - <kbd>LAlt</kbd> → <kbd>LCtrl</kbd>
  - <kbd>LWin</kbd> → <kbd>LAlt</kbd>
- **Combos:** swaps <kbd>Ctrl</kbd>+<kbd>Tab</kbd> with <kbd>Alt</kbd>+<kbd>Tab</kbd> (after remaps) to trigger window switching.

### `scripts/LanguageSwitch-PrimarySecondary.ahk`

- <kbd>Caps Lock</kbd> sets `PRIMARY_KLID`
- <kbd>Shift</kbd>+<kbd>Caps Lock</kbd> sets `SECONDARY_KLID`

_(Define those KLIDs at the top of the script.)_

## Usage

1. Install [AutoHotkey v2](https://www.autohotkey.com/).
2. Clone or download this repository.
3. Use AutoHotkey to compile the `.ahk` file into an `.exe`.
4. Open the **Startup** folder by pressing <kbd>Win</kbd>+<kbd>R</kbd>, typing `shell:startup`, and pressing <kbd>Enter</kbd>.
5. Place the `.exe` file in that folder so it runs automatically when Windows starts.
