# ProxyRun 🌐

> Minimalist TUI & CLI proxy manager for AI agentic runtimes (OpenCode, Codex, Aider, Claude Code) and terminal workflows.

ProxyRun provides an interactive **TUI switcher** (built on Charm's `gum`) and a transparent **CLI wrapper** that exports full environment proxy variables (`HTTP_PROXY`, `HTTPS_PROXY`, `ALL_PROXY`, `NO_PROXY` in both lower and upper cases) to child processes.

## ✨ Features

- **Interactive TUI**: Arrow-key menu for profile switching, adding new proxies, and deleting outdated ones.
- **Protocol Flexibility**: Supports `HTTP`, `HTTPS`, and `SOCKS5` (`socks5h://`).
- **Built-in Network Probe**: Test proxy latency and verify actual Exit IP directly from the menu.
- **Agentic Ready**: Works transparently with tools like `opencode`, `codex`, `aider`, `git`, and `curl`.
- **Zero Heavy Dependencies**: Pure Bash + `gum` + `curl`.

## 📦 Installation

```bash
git clone https://github.com/<your-username>/proxyrun.git ~/Projects/proxyrun
cd ~/Projects/proxyrun
./install.sh
```

Ensure `~/.local/bin` is in your `$PATH`.

## 🚀 Usage

### 1. Interactive TUI Menu
Launch the switcher without arguments:
```bash
proxyrun
```

### 2. CLI Wrapper
Run any application through the default active proxy:
```bash
proxyrun codex
proxyrun opencode
proxyrun git clone https://github.com/...
```

Run through a specific profile on the fly:
```bash
proxyrun -p home-socks codex
```

Bypass proxy completely (`DIRECT` connection):
```bash
proxyrun -d curl ipinfo.io
```

## ⚙️ Configuration

Profiles and states are stored in `~/.config/proxyrun/`:
- `profiles.tsv`: list of named proxies (`<ID>\t<URL>\t<Description>`).
- `default`: active profile ID.
- `apps.txt`: list of pre-configured applications for quick launch.

## 📄 License
MIT
