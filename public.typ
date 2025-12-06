#import "template.typ": *

#show: resume.with(
  firstname: "Joachim",
  lastname: "Le Fournis",
  photo: "public.png",
  title: "Etudiant en informatique",
  side: [
    = Contact
    #contact(
      (
        emoji.mail : link("mailto:joachim@le-fournis.fr")[joachim\@le-fournis.fr],
        emoji.globe.meridian: link("https://le-fournis.fr/")[le-fournis.fr],
        fa-github: link("https://github.com/redgl0w")[redgl0w],
        fa-discord: [redgl0w]
      )
    )

    = Langages
    *Bas niveau :* C, C++, assembleur RISC-V et ARM

    *HDL :* VHDL, SystemVerilog//, chisel un jour j'espère

    *Web :* Javascript, Typescript, HTML, PHP

    *Autre :* Python, MaxMSP, ruby

    = Outils
    *Développement :* Makefile, git

    *Gestion système et réseau :* nushell, bash, NixOS, Archlinux, debian, Mikrotik
    
    *Composition de document :* typst, LaTeX

    = Langues
    #grid(
      columns: 2,
      column-gutter: .5em,
      row-gutter: .5em,
      align: (left + horizon, right + horizon),
      [🇨🇵 *Français*], [langue maternelle],
      [🇬🇧 *Anglais*], [C1/C2],
      [🇩🇪 *Allemand*], [B1/B2]
    )

    = Centres d'intérêts
    Musique (CEM en violoncelle et percussions), Cinéma, Physique
  ]
)

= Formation

#entry([2025-...], [Etudes dans le département d'informatique], [ENS Rennes], [Ker-Lann (Bruz), ISTIC (Rennes)], [
  - Options 1A : Algorithmique distribuée, Optimisation
])
#entry([2024-2025], [Formation initiale d'ingénieur], [Grenoble INP - ENSIMAG], [Saint Martin d'Hérès], [
  Validation de la première année avant réorientation à l'ENS :
  - Maths : Transformée de Fourrier, Théorie de l'Information, Recherche Opérationnelle, Probabilités, Statistiques, Analyse Numérique, ...
  - Informatique : Architecture Matérielle et Conception de Processeurs (VHDL et assembleur RISC-V), Programmation Impérative, C, Réseau et sécurité, algorithmique/structures de données, Théorie des langages, ...
  - SHS : Anglais, Allemand, Economie, Gestion d'entreprise, Transition
])
#entry([2022-2024], [CPGE MP2I / MPI\*], [Lycée Descartes], [Tours], [
  - TIPE : Jeu de Hex, algorithmes y jouant et le résolvant
  - Option Allemand durant les 2 années
])
#entry([2019-2022], [Bacalauréat général], [Lycée Montesquieu], [Le Mans], [
  - Spécialités Mathématiques, Physique-chimie et NSI (en 1ère)
  - Options Maths Expertes, LCA, Grec, CIAV ; LV2 Allemand
])

= Expériences professionnelles

#entry([2025], [Stage Assistant Ingénieur en architecture matérielle], [Laboratoire TIMA], [Grenoble], [
  - #lorem(30)
  - #lorem(12)
])
#entry([2018], [Stage d'observation de 3ème], [Laboratoire LAUM], [Le Mans], [
  #lorem(25)
])

= Projets personnels
#entry([2020-], [#link("https://github.com/numworks/epsilon")[Epsilon] et #link("https://getomega.dev/")[Omega]], [], [], [
  #lorem(150)
])
