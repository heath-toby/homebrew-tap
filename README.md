# heath-toby/homebrew-tap

A personal Homebrew tap for macOS apps that aren't in the official `homebrew-cask` repository.

## Usage

```sh
brew tap heath-toby/tap
brew install --cask <name>
```

## Available casks

- **ttaccessible** — native, fully accessible [TeamTalk 5](https://www.bearware.dk/) client for macOS. Upstream: <https://github.com/math65/ttaccessible>

  ```sh
  brew install --cask ttaccessible
  ```

- **vokeymapper** — editor for VoiceOver's QuickNav, Option Key, and Numpad key bindings. Upstream: <https://github.com/heath-toby/VOKeyMapper>

  ```sh
  brew install --cask vokeymapper
  ```

- **voiceover-signal-filter** — macOS companion to [NVDA-Signal-Filter](https://github.com/heath-toby/NVDA-Signal-Filter) and [orca-signal-filter](https://github.com/heath-toby/orca-signal-filter); announces Signal Desktop typing, sent, and received events through VoiceOver. Upstream: <https://github.com/heath-toby/VoiceOverSignalFilter>

  ```sh
  brew install --cask voiceover-signal-filter
  ```

- **vocr** — OCR utility for VoiceOver users, with optional LLM image description. Self-updates via Sparkle. Upstream: <https://github.com/chigkim/VOCR>

  ```sh
  brew install --cask vocr
  ```
