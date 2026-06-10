# homebrew-lasso

Homebrew tap for [lasso](https://github.com/cowboyinc/lasso), the interactive
terminal console for the Cowboy blockchain.

## Install

```bash
brew install cowboyinc/lasso/lasso
```

The fully-qualified name matters: plain `brew install lasso` resolves to an
unrelated SAML library in homebrew-core.

Then run `lasso` and follow the `/walkthrough`.

## Updating the formula

Releases are cut from the lasso repo with `make release`, which prints the
SHA256SUMS for the four platform binaries. Bump `version`, the four `url`
lines, and the matching `sha256` lines in `Formula/lasso.rb`.
