# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "array-back-3.1.0" = {
      name = "array-back";
      packageName = "array-back";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-back/-/array-back-3.1.0.tgz";
        sha512 = "TkuxA4UCOvxuDK6NZYXCalszEzj+TLszyASooky+i742l9TqsOdYCMJJupxRic61hwquNtppB3hgcuq9SVSH1Q==";
      };
    };
    "command-line-args-5.2.1" = {
      name = "command-line-args";
      packageName = "command-line-args";
      version = "5.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/command-line-args/-/command-line-args-5.2.1.tgz";
        sha512 = "H4UfQhZyakIjC74I9d34fGYDwk3XpSr17QhEd0Q3I9Xq1CETHo4Hcuo87WyWHpAF1aSLjLRf5lD9ZGX2qStUvg==";
      };
    };
    "esutils-2.0.3" = {
      name = "esutils";
      packageName = "esutils";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/esutils/-/esutils-2.0.3.tgz";
        sha512 = "kVscqXk4OCp68SZ0dkgEKVi6/8ij300KBWTJq32P/dYeWTSwK41WyTxalN1eRmA5Z9UU/LX9D7FWSmV9SAYx6g==";
      };
    };
    "find-replace-3.0.0" = {
      name = "find-replace";
      packageName = "find-replace";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/find-replace/-/find-replace-3.0.0.tgz";
        sha512 = "6Tb2myMioCAgv5kfvP5/PkZZ/ntTpVK39fHY7WkWBgvbeE+VHd/tZuZ4mrC+bxh4cfOZeYKVPaJIZtZXV7GNCQ==";
      };
    };
    "lodash.camelcase-4.3.0" = {
      name = "lodash.camelcase";
      packageName = "lodash.camelcase";
      version = "4.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz";
        sha1 = "b28aa6288a2b9fc651035c7711f65ab6190331a6";
      };
    };
    "multimap-1.0.2" = {
      name = "multimap";
      packageName = "multimap";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/multimap/-/multimap-1.0.2.tgz";
        sha1 = "6aa76fc3233905ba948bbe4c74dc2c3a0356eb36";
      };
    };
    "multimap-1.1.0" = {
      name = "multimap";
      packageName = "multimap";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/multimap/-/multimap-1.1.0.tgz";
        sha512 = "0ZIR9PasPxGXmRsEF8jsDzndzHDj7tIav+JUmvIFB/WHswliFnquxECT/De7GR4yg99ky/NlRKJT82G1y271bw==";
      };
    };
    "object-assign-4.1.1" = {
      name = "object-assign";
      packageName = "object-assign";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    };
    "prettier-2.6.2" = {
      name = "prettier";
      packageName = "prettier";
      version = "2.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/prettier/-/prettier-2.6.2.tgz";
        sha512 = "PkUpF+qoXTqhOeWL9fu7As8LXsIUZ1WYaJiY/a7McAQzxjk82OF0tibkFXVCDImZtWxbvojFjerkiLb0/q8mew==";
      };
    };
    "shift-ast-7.0.0" = {
      name = "shift-ast";
      packageName = "shift-ast";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-ast/-/shift-ast-7.0.0.tgz";
        sha512 = "O0INwsZa1XH/lMSf52udGnjNOxKBLxFiZHt0Ys3i6bqtwuGEA3eDR4+e0qJELIsCy8+BiTtlTgQzP76K1ehipQ==";
      };
    };
    "shift-codegen-8.0.0" = {
      name = "shift-codegen";
      packageName = "shift-codegen";
      version = "8.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-codegen/-/shift-codegen-8.0.0.tgz";
        sha512 = "HPRG9hm9ITqQFu7OPJvIM9IoAz7eIIDDC6EWfYHUx1Em6P67Nb9+famg97CaOpqfo4nA3PhBcGFp92De8cu1TQ==";
      };
    };
    "shift-parser-8.0.0" = {
      name = "shift-parser";
      packageName = "shift-parser";
      version = "8.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-parser/-/shift-parser-8.0.0.tgz";
        sha512 = "IShW1wGhvA5e+SPNVQ+Dwi/Be6651F2jZc6wwYHbYW7PiswAYfvR/v3Q+CjjxsVCna5L6J5OtR6y+tkkCzvCfw==";
      };
    };
    "shift-reducer-7.0.0" = {
      name = "shift-reducer";
      packageName = "shift-reducer";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-reducer/-/shift-reducer-7.0.0.tgz";
        sha512 = "9igIDMHzp1+CkQZITGHM1sAd9jqMPV0vhqHuh8jlYumHSMIwsYcrDeo1tlpzNRUnfbEq1nLyh8Bf1YU8HGUE7g==";
      };
    };
    "shift-regexp-acceptor-3.0.0" = {
      name = "shift-regexp-acceptor";
      packageName = "shift-regexp-acceptor";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-regexp-acceptor/-/shift-regexp-acceptor-3.0.0.tgz";
        sha512 = "98UKizBjHY6SjjLUr51YYw4rtR+vxjGFm8znqNsoahesAI8Y9+WVAyiBCxxkov1KSDhW0Wz8FwwUqHnlFnjdUg==";
      };
    };
    "shift-scope-6.0.0" = {
      name = "shift-scope";
      packageName = "shift-scope";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-scope/-/shift-scope-6.0.0.tgz";
        sha512 = "D/QKwP/VNSXzD9duQbVCvLdlZ9N44AXo+ncdc7ryw+LPpV5wq+m57+PVvtsv7Dj4g+xu/7zfs7zCSmexCrt00Q==";
      };
    };
    "shift-spec-2019.0.0" = {
      name = "shift-spec";
      packageName = "shift-spec";
      version = "2019.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shift-spec/-/shift-spec-2019.0.0.tgz";
        sha512 = "vYfKl+afWPUj/wfr5T/+mdYvWx0nn8LY6hVdfZmFENdGEBpAfQyOTo4/5i+rs8mj+Jz4+0MnsP4vXagjEoHfEw==";
      };
    };
    "typical-4.0.0" = {
      name = "typical";
      packageName = "typical";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/typical/-/typical-4.0.0.tgz";
        sha512 = "VAH4IvQ7BDFYglMd7BPRDfLgxZZX4O4TFcRDA6EN5X7erNJJq+McIEp8np9aVtxrCJ6qx4GTYVfOWNjcqwZgRw==";
      };
    };
    "unicode-canonical-property-names-ecmascript-1.0.4" = {
      name = "unicode-canonical-property-names-ecmascript";
      packageName = "unicode-canonical-property-names-ecmascript";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/unicode-canonical-property-names-ecmascript/-/unicode-canonical-property-names-ecmascript-1.0.4.tgz";
        sha512 = "jDrNnXWHd4oHiTZnx/ZG7gtUTVp+gCcTTKr8L0HjlwphROEW3+Him+IpvC+xcJEFegapiMZyZe02CyuOnRmbnQ==";
      };
    };
    "unicode-match-property-ecmascript-1.0.4" = {
      name = "unicode-match-property-ecmascript";
      packageName = "unicode-match-property-ecmascript";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/unicode-match-property-ecmascript/-/unicode-match-property-ecmascript-1.0.4.tgz";
        sha512 = "L4Qoh15vTfntsn4P1zqnHulG0LdXgjSO035fEpdtp6YxXhMT51Q6vgM5lYdG/5X3MjS+k/Y9Xw4SFCY9IkR0rg==";
      };
    };
    "unicode-match-property-value-ecmascript-1.0.2" = {
      name = "unicode-match-property-value-ecmascript";
      packageName = "unicode-match-property-value-ecmascript";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/unicode-match-property-value-ecmascript/-/unicode-match-property-value-ecmascript-1.0.2.tgz";
        sha512 = "Rx7yODZC1L/T8XKo/2kNzVAQaRE88AaMvI1EF/Xnj3GW2wzN6fop9DDWuFAKUVFH7vozkz26DzP0qyWLKLIVPQ==";
      };
    };
    "unicode-property-aliases-ecmascript-1.0.4" = {
      name = "unicode-property-aliases-ecmascript";
      packageName = "unicode-property-aliases-ecmascript";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/unicode-property-aliases-ecmascript/-/unicode-property-aliases-ecmascript-1.0.4.tgz";
        sha512 = "2WSLa6OdYd2ng8oqiGIWnJqyFArvhn+5vgx5GTxMbUYjCYKUcuKS62YLFF0R/BDGlB1yzXjQOLtPAfHsgirEpg==";
      };
    };
  };
  args = {
    name = "unminify";
    packageName = "unminify";
    version = "2.0.0";
    src = ./.;
    dependencies = [
      sources."array-back-3.1.0"
      sources."command-line-args-5.2.1"
      sources."esutils-2.0.3"
      sources."find-replace-3.0.0"
      sources."lodash.camelcase-4.3.0"
      sources."multimap-1.1.0"
      sources."object-assign-4.1.1"
      sources."prettier-2.6.2"
      sources."shift-ast-7.0.0"
      sources."shift-codegen-8.0.0"
      sources."shift-parser-8.0.0"
      sources."shift-reducer-7.0.0"
      sources."shift-regexp-acceptor-3.0.0"
      (sources."shift-scope-6.0.0" // {
        dependencies = [
          sources."multimap-1.0.2"
        ];
      })
      sources."shift-spec-2019.0.0"
      sources."typical-4.0.0"
      sources."unicode-canonical-property-names-ecmascript-1.0.4"
      sources."unicode-match-property-ecmascript-1.0.4"
      sources."unicode-match-property-value-ecmascript-1.0.2"
      sources."unicode-property-aliases-ecmascript-1.0.4"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "reverse many of the transformations applied by minifiers and naïve obfuscators";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
