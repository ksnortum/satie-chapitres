# satie-chapitres
LilyPond source files for Erik Satie's "Chapitres Tournés en Tous Sens."

## Requirements
LilyPond version 2.24.0 or higher.  It is assumed that `lilypond` is in the PATH of your system.

## Producing PDFs or other outputs
You can always go to my latest release [here](https://github.com/ksnortum/satie-chapitres/releases/latest), or use [Frescobaldi](https://www.frescobaldi.org/), or create the PDFs from the command line.

`cd` into your installation directory and type:

        lilypond chapitres-book.ly

This should produce a PDF and three MIDI files.

The PDF produced will have point-and-click info in it, which you may not want (it makes the file size much bigger).  To avoid this use the `-dno-point-and-click` command line option.  This is explained in detail [here](https://lilypond.org/doc/v2.24/Documentation/usage/command_002dline-usage).

There are also three LilyPond files to create the movements separately: `celle.ly`, `le-porteur.ly`, and `regrets.ly`.

## Deviations from the source
I have made a few editorial decisions about the source score.  These are documented in the `include/<movement>-parts.ily` files.  These changes seemed either obvious or reasonable to me as discussed in the `include` files.

## Translations
I have provided translations of the (often silly) text and musical expression.  However, I am not a French-speaker, so some words and phrases may be laughably wrong (and maybe Satie would have liked that).  I invite native French speakers to email me, or create a Pull Request.

## Licensing
This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/).

## Questions, problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net**