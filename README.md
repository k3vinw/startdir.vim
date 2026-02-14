# startdir.vim :compass:
### Start Vim where you intend.

`startdir.vim` is a minimalist Vim plugin that sets Vim’s working directory based on the file or directory you pass at startup.

If you launch Vim with a path argument, `startdir` ensures Vim’s current working directory matches that location at startup and then stays out of the way.

No root detection.
No ongoing directory tracking.
No configuration required.

Just predictable startup behavior.

---

## Why?

When you open Vim like this:

```bash
vim my_project/
```

or:

```bash
vim my_project/src/app.py
```

Vim does not always change its working directory to `my_project/`.

That can affect:

- Relative `:e` commands
- `:grep` searches
- File explorers
- Fuzzy finders
- Any plugin that relies on `getcwd()`

`startdir.vim` ensures Vim begins in the directory you meant to work in.

---

## What It Does

At startup:

- If you pass a directory → Vim’s working directory becomes that directory.
- If you pass a file → Vim’s working directory becomes that file’s parent directory.
- If you pass nothing → Nothing changes.

After launch, `startdir` does nothing further.

It does not:

- Detect Git roots
- Override `'autochdir'`
- Follow you as you switch buffers
- Manage projects or workspaces

It simply aligns Vim’s working directory with your startup intent.

---

## Installation

Using vim-plug:

```vim
Plug 'k3vinw/startdir.vim'
```

Works with any plugin manager.

---

## Philosophy

Vim is powerful because it is predictable.

`startdir.vim` does one small thing:

> Make startup behavior match your expectations.

Nothing more.

---

## License

MIT License. Copyright (c) 2023 Kevin Ray Wood.

---

