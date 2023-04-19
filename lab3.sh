$ level intro1

$ hint

Aby zakończyć, wystarczy dwukrotnie wpisać 'git commit'!

$ delay 2000

$ show goal

$ git commit

$ git commit





$ level intro2

$ hint

Utwórz nową gałąź za pomocą "git branch " i przełącz się na nią za pomocą "git checkout "

$ delay 2000

$ show goal

$ git branch bugFix

$ git checkout bugFix




$ level intro3

$ hint

Pamiętaj, aby commitować w określonej kolejności (bugFix przed main)

$ delay 2000

$ show goal

$ git branch bugFix

$ git checkout bugFix

$ git commit

$ git checkout main

$ git commit

$ git merge bugfix

Odnośnik bugfix nie istnieje lub jest nieznany

$ git merge bugFix




$ level intro4

$ hint

Upewnij się, że masz już commit z bugFix

$ delay 2000

$ show goal

$ git branch bugFix

$ git checkout bugFix

$ git commit

$ git checkout main

$ git commit

$ git rebase bugFix

$ undo

$ git checkout bugFix

$ git rebase main



$ level rampup1

$ hint

Użyj nazwy commita (hasza)!

$ delay 2000

$ show goal

$ git checkout C4



$ level rampup2

$ hint

Pamiętaj o operatorze wstawienia (^)!

$ delay 2000

$ show goal

$ git checkout bugFix^



$ level rampup3

$ hint

Aby ukończyć ten poziom, musisz użyć co najmniej jednej bezpośredniej referencji (hasza).

$ delay 2000

$ show goal

$ git branch -f main C6

$ git checkout C1

$ git branch -f bugFix HEAD~1



$ level rampup4

$ hint

Zauważ, że revert i reset przyjmują różne argumenty

$ delay 2000

$ show goal

$ git reset HEAD~1

$ git checkout pushed

$ git revert HEAD



$ level move1

$ hint

git cherry-pick a po nim nazwy commitów!

$ delay 2000

$ show goal

$ git cherry-pick C3 C4 C7



$ level move2

$ hint

Możesz użyć gałęzi lub referencji względnych (HEAD~), aby określić cel rebase'a

$ delay 2000

$ show goal

$ git rebase -i overHere



$ level mixed1

$ hint

Pamiętaj, że znasz już interaktywny rebase oraz cherry-pick

$ delay 2000

$ show goal

$ git rebase -i main

$ git rebase bugfix main

Odnośnik bugfix nie istnieje lub jest nieznany

$ git rebase bugFix main



level mixed2

$ hint

Nie zapomnij sforwardować maina do najnowszych zmian!

$ delay 2000

$ show goal

$ git rebase -i HEAD~2

$ git commit --amend

$ git rebase -i HEAD~2

$ git rebase caption main


$ level mixed3

$ hint

Nie zapomnij sforwardować maina do najnowszych zmian!

$ delay 2000

$ show goal

$ git checkout main

$ git cherry-pick C2

$ git commit --amend

$ git cherry-pick C3


$ level mixed4

$ hint

Możesz checkoutować commit bezpośrednio lub po prostu tag!

$ delay 2000

$ show goal

$ git tag v1 side~1

$ git tag v0 main~2

$ git checkout v1


$ level mixed5

$ hint

Scommituj raz na bugFix, żeby przejść dalej

$ delay 2000

$ show goal

$ git commit