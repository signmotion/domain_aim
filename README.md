# Domain Aim

![SDK version](https://badgen.net/pub/sdk-version/domain_aim?style=for-the-badge)
![Supported platforms](https://badgen.net/pub/flutter-platform/domain_aim?style=for-the-badge)
![Supported SDKs](https://badgen.net/pub/dart-platform/domain_aim?style=for-the-badge)

![Cover - Domain Aim](https://raw.githubusercontent.com/signmotion/domain_aim/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/domain_aim.svg?logo=dart&logoColor=00b9fc&color=blue&style=for-the-badge)](https://pub.dartlang.org/packages/domain_aim)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/domain_aim?logo=github&logoColor=white&style=for-the-badge)](https://github.com/signmotion/domain_aim)
[![Publisher](https://img.shields.io/pub/publisher/domain_aim?style=for-the-badge)](https://pub.dev/publishers/syrokomskyi.com)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/domain_aim/dart-ci.yml?logo=github-actions&logoColor=white&style=for-the-badge)](https://github.com/signmotion/domain_aim/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/domain_aim?logo=github&logoColor=white&style=for-the-badge)](https://github.com/signmotion/domain_aim/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/domain_aim?logo=github&logoColor=white&style=for-the-badge)](https://github.com/signmotion/domain_aim/issues)
[![Pub Score](https://img.shields.io/pub/points/domain_aim?logo=dart&logoColor=00b9fc&style=for-the-badge)](https://pub.dev/packages/domain_aim/score)

Appraises the domain name: what purposes a TLD (Top Level Domain) can be used for?
The easy-to-use and [well-tested](https://github.com/signmotion/domain_aim/tree/master/test) package.
Feel free to use it in your awesome project.

[![CodeFactor](https://codefactor.io/repository/github/signmotion/domain_aim/badge?style=for-the-badge)](https://codefactor.io/repository/github/signmotion/domain_aim)

Share some ❤️ and star repo to support the [Domain Aim](https://github.com/signmotion/domain_aim).

_If you write an article about **DomainAim** or any of [these](https://pub.dev/packages?q=publisher%3Asyrokomskyi.com&sort=updated) packages, let me know and I'll post the URL of the article in the **README**_ 🤝

## 🚀 Usage

### Appraising the TLD for Use as a Business Card Site

```dart
final appraiser = Appraiser.personalBusinessCard();
print(appraiser.appraiseTld('com'));
```

```text
YES
```

### All suitable TLDs for Use as a Business Card Site

```dart
final appraiser = Appraiser.personalBusinessCard();
final yesFilter = appraiser.filter([Grade.YES, Grade.Yes, Grade.yes]);
print(yesFilter);
```

Grade relevance: `YES` > `Yes` > `yes`.

```text
{biz: YES, black: YES, com: YES, contact: YES, cool: YES, dad: YES, me: YES, one: YES, online: YES, page: YES, space: YES, best: Yes, bio: Yes, center: Yes, co: Yes, fan: Yes, gay: Yes, ink: Yes, io: Yes, it: Yes, life: Yes, live: Yes, net: Yes, pro: Yes, site: Yes, soy: Yes, website: Yes, win: Yes, actor: yes, art: yes, au: yes, band: yes, bike: yes, bingo: yes, blog: yes, boo: yes, business: yes, buzz: yes, ca: yes, cab: yes, cc: yes, cheap: yes, com.au: yes, com.mx: yes, digital: yes, direct: yes, dog: yes, expert: yes, family: yes, fun: yes, gallery: yes, glass: yes, global: yes, gold: yes, green: yes, guide: yes, guru: yes, hair: yes, holiday: yes, in: yes, info: yes, irish: yes, jp: yes, lat: yes, limited: yes, limo: yes, love: yes, men: yes, monster: yes, mx: yes, nexus: yes, ninja: yes, nl: yes, place: yes, plus: yes, pub: yes, quest: yes, red: yes, rest: yes, run: yes, ski: yes, skin: yes, social: yes, solar: yes, uk: yes, uno: yes, us: yes, vegas: yes, vision: yes, watch: yes, world: yes, xyz: yes, zip: yes, zone: yes}
```

## Extending

To set own grades or/and own "_domain suitablitity filter_" use this table:

- Google Drive [Business Card Suite / Domain aim (suitability)](https://docs.google.com/spreadsheets/d/19pdLp-b3vX9dGn3TsSvFMT5G0sdyfOhI6_Bmcdxju-I)

and the folder `src/suitabilities`.

## ✨ What's New

Look at [changelog](https://pub.dev/packages/domain_aim/changelog).

## 👋 Welcome

If you encounter any problems, feel free to [open an issue](https://github.com/signmotion/domain_aim/issues). If you feel the package is missing a feature, please [raise a ticket](https://github.com/signmotion/domain_aim/issues) on Github and I'll look into it. Requests and suggestions are warmly welcome. Danke!

Contributions are what make the open-source community such a great place to learn, create, take a new skills, and be inspired.

If this is your first contribution, I'll leave you with some of the best links I've found: they will help you get started or/and become even more efficient.

- [Guide to Making a First Contribution](https://github.com/firstcontributions/first-contributions). You will find the guide in your native language.
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute). Longread for deep diving for first-timers and for veterans.
- [Summer Guide from Google](https://youtu.be/qGTQ7dEZXZc).
- [CodeTriangle](https://codetriage.com). Free community tools for contributing to Open Source projects.

The package **DomainAim** is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/domain_aim). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/domain_aim).

And here is a curated list of how you can help:

- Documenting the undocumented. Whenever you come across a class, property, or method within our codebase that you're familiar with and notice it lacks documentation, kindly spare a couple of minutes to jot down some helpful notes for your fellow developers.
- Refining the code. While I'm aware it's primarily my responsibility to refactor the code, I wholeheartedly welcome any contributions you're willing to make in this area. Your insights and improvements are appreciated!
- Constructive code reviews. Should you discover a more efficient approach to achieve something, I'm all ears. Your suggestions for enhancement are invaluable.
- Sharing your examples. If you've experimented with our use cases or have crafted some examples of your own, feel free to add them to the `example` directory. Your practical insights can enrich our resource pool.
- Fix typos/grammar mistakes.
- Report bugs and scenarios that are difficult to implement.
- Implement new features by making a pull-request.

## ✅ TODO (perhaps)

Once you start using the **DomainAim**, it will become easy to choose the functionality to contribute. But if you already get everything you need from this package but have some free time, let me write here what I have planned:

- The links to TLDs domain descriptions.

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, the above notes will help you choose the suitable "feature" and become a contributor to the open-source community.

Ready [for 🪙](https://webduet.de "The Modern Planet-Scale Site for Your Ambitions")

Created [with ❤️](https://syrokomskyi.com "Andrii Syrokomskyi")

[![fresher](https://img.shields.io/badge/maintained%20using-fresher-darkgreen.svg?style=for-the-badge)](https://github.com/signmotion/fresher "Keeps Projects Up to Date")
