---
layout: post
title: Vivaldi Style Tab Manager
date: 2026-10-15
categories: personal productivity
---

Manage Firefox tab groups entirely from the keyboard, Vivaldi-style. Vivaldi Style Tab Manager adds three fast shortcuts to group tabs, open a tab in the same group, or open an ungrouped tab — without touching the mouse.

**[Get it on Firefox Add-ons](https://addons.mozilla.org/en-US/firefox/addon/vivaldi-style-tab-manager/)**
**[View on GitHub](https://github.com/imed-ghomari/tab-grouping-extension)**

### Highlights:
- **Create a group from highlighted tabs** (`Ctrl+Shift+G`) — groups multi-selected tabs, or all ungrouped tabs if only one is selected.
- **Add a tab next to the current tab** (`Alt+Shift+T`) — stays inside the same group if the current tab is grouped, otherwise stays outside all groups.
- **Add a tab completely outside all groups** (`Ctrl+Shift+U`) — even when the current tab is inside a group.
- **Optional group naming** — opt-in centered dialog to name a group on creation (Enter confirms, Esc keeps it unnamed).
- **Private by design** — requires Firefox 139+, no data collection, no tracking; permissions (`tabs`, `tabGroups`, `storage`) used only locally.

### Why I built it
Vivaldi's tab management philosophy is to create tabs outside of any group first, and only group them once a pattern of project- or theme-related tasks emerges. That emergent grouping is a superior way to manage tabs: it keeps new ideas friction-free and avoids premature organization, while still letting related work coalesce into a group when it earns it.

That workflow wasn't available in Firefox's built-in grouping or existing extensions, which tend to force you to decide on a group up front. This extension ports that philosophy to Firefox — and the same approach can be ported to other browsers — by making ungrouped-first the default and grouping a fast, keyboard-driven action.
