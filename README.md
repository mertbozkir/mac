# mac

Hey Future Me! Or anyone else grabbing a new Mac and wanting to set it up like this one. Here's the lowdown to get everything back up and running smoothly.

## Step 1: Brew It! 🍺

First, we need **Homebrew**. It's like the magic wand for installing developer tools and apps on macOS. Pop open the default Terminal (we'll replace it soon!) and run this:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Just follow the prompts, it's pretty straightforward. You might need to run a couple of commands it gives you at the end to finalize the setup.

## Step 2: Install apps with brew --cask! ✨

Now for the fun part! Homebrew can install all those useful graphical apps too. Just copy and paste this big command into your terminal:

```bash
brew install --cask alt-tab bartender basictex hiddenbar iterm2 jan maccy notunes ollama omnidisksweeper openvpn-connect postman raycast rectangle shortcutdetective spotify stats cursor vlc zoom
```

**What's all this stuff?**

*   **Superchargers:** `raycast` (Your keyboard command center!)
*   **Window Tamers:** `alt-tab` (Windows-style switching!), `rectangle` (Snap windows!),  `hiddenbar` (Clean up that menu bar!)
*   **Dev Goodies:** `iterm2` (A way better terminal!), `cursor` (The code editor!), `postman` (API testing!), `ollama` / `jan` (Local AI fun!), `basictex` (If you need LaTeX)
*   **Handy Utilities:** `maccy` (Clipboard magic!), `omnidisksweeper` (Where did my space go?), `stats` (System monitor!), `shortcutdetective` (Who stole my shortcut?), `notunes` (Stop Music app madness!), `openvpn-connect` (VPN stuff)
*   **Essentials:** `spotify` (Tunes!), `vlc` (Plays anything!), `zoom` (Meetings!)

This gets all the main tools loaded up quickly!

## Step 3: Make Your Terminal Awesome (Zsh + P10k) 😎

The default terminal is okay, but we can do *so* much better with Oh My Zsh and the Powerlevel10k theme.

1.  **Install Oh My Zsh:**
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
2.  **Install Powerlevel10k Theme:** The easiest way is usually via Homebrew now:
    ```bash
    brew install powerlevel10k
    echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
    ```
3.  **Install a Nerd Font:** Powerlevel10k needs a special font for all the cool icons. I like FiraCode Nerd Font or MesloLGS NF. [Download one](https://www.nerdfonts.com/font-downloads), install it, and set it as your font in iTerm2 (Preferences -> Profiles -> Text -> Font).
4.  **Copy `.zshrc`:** Grab the `.zshrc` file (the one with all the aliases, plugins like `zsh-syntax-highlighting`, etc.) and place it in your home folder (`~/.zshrc`).
5.  **Configure P10k:** The first time you open iTerm2 after this, `p10k configure` should run automatically. Go through the wizard to customize the look! If it doesn't run, just type `p10k configure`.
6.  **Restart Terminal:** Close and reopen iTerm2, or run `source ~/.zshrc`.

## Step 4: Dot the i's and Cross the t's

*   **Node.js (via NVM):** My `.zshrc` loads `nvm`. You'll need to install NVM first ([check their GitHub page for install instructions](https://github.com/nvm-sh/nvm#installing-and-updating)). Then install Node: `nvm install --lts`.
*   **Python Stuff:** Make sure you have your preferred Python setup (maybe install via `brew install uv`. definitely use uv!!!`).
*   **Check `.zshrc`:** Give your `.zshrc` file a quick read-through once you copy it over, just to remind yourself of any other specific paths or tools you set up.

## That's It! 🎉

You should be pretty much set up and ready to rock. Enjoy the shiny new Mac environment!
