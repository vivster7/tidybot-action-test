# Tidybot Action Test Repository

This repository is used to test the tidybot GitHub Action.

## Test Files

This repo contains various files with pragma comments to test different scenarios:

- Different date formats
- Past dates (should be deleted)
- Future dates (should not be deleted yet)
- Different programming languages

## Usage

This repository is meant to be used with the tidybot GitHub Action:

```yaml
- uses: ephemeral-dev/tidybot-action@v1
```