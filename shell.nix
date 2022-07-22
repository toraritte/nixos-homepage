# WHAT IS `flake-compat`?
# TODO
(import (fetchTarball https://github.com/edolstra/flake-compat/archive/master.tar.gz) {
  # wHAT DOES `./.` MEAN?
  #
  #  `.` means the current working directory, and testing
  #  `ls` both with `.` and  `./.` yields the same result
  #  so why overcomplicate it? The answer is provided in
  #  [section "5.2.1 Values"](https://nixos.wiki/wiki/Documentation_Gaps)
  #  in the Nix manual:
  #
  #  > _Paths_, e.g.,  `/bin/sh` or `./builder.sh`.  A path
  #  > must contain at least one  slash to be recognised as
  #  > such.
  # 
  # WHY IS THE `fetchGit` BUILTIN NEEDED?
  # TODO
  src = builtins.fetchGit ./.;
}).shellNix
