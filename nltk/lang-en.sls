#!chezscheme
;; English stop words
;; created by Peter Lane, 2017 for nltk

;;; This library is free software; you can redistribute it
;;; and/or modify it under the terms of the Creative Commons
;;; GNU Lesser General Public License as published by the
;;; Free Software Foundation; either version 2.1 of the License,
;;; or (at your option) any later version.
;;;
;;; The Scheme NLTK is distributed in the hope that it will be
;;; useful, but WITHOUT ANY WARRANTY; without even the
;;; implied warranty of MERCHANTABILITY or FITNESS FOR A
;;; PARTICULAR PURPOSE.  See the Creative Commons GNU Lesser
;;; General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser
;;; General Public License along with Web testing; if not,
;;; write to the Free Software Foundation, Inc., 59 Temple
;;; Place, Suite 330, Boston, MA 02111-1307 USA

(define-library
  (nltk lang-en)
  (export stopwords-list-en
          stopwords-hash-en)
  (import (scheme base)
          (nltk sequence))

  (begin

    ;; list from http://www.clips.ua.ac.be/pages/stop-words
    (define stopwords-list-en '("a" "aboard" "about" "above" "across" "after" "again" "against" "all" "almost" "alone" "along" "alongside" "already" "also" "although" "always" "am" "amid" "amidst" "among" "amongst" "an" "and" "another" "anti" "any" "anybody" "anyone" "anything" "anywhere" "are" "area" "areas" "aren't" "around" "as" "ask" "asked" "asking" "asks" "astride" "at" "aught" "away" "back" "backed" "backing" "backs" "bar" "barring" "be" "became" "because" "become" "becomes" "been" "before" "began" "behind" "being" "beings" "below" "beneath" "beside" "besides" "best" "better" "between" "beyond" "big" "both" "but" "by" "came" "can" "can't" "cannot" "case" "cases" "certain" "certainly" "circa" "clear" "clearly" "come" "concerning" "considering" "could" "couldn't" "daren't" "despite" "did" "didn't" "differ" "different" "differently" "do" "does" "doesn't" "doing" "don't" "done" "down" "down" "downed" "downing" "downs" "during" "each" "early" "either" "end" "ended" "ending" "ends" "enough" "even" "evenly" "ever" "every" "everybody" "everyone" "everything" "everywhere" "except" "excepting" "excluding" "face" "faces" "fact" "facts" "far" "felt" "few" "fewer" "find" "finds" "first" "five" "following" "for" "four" "from" "full" "fully" "further" "furthered" "furthering" "furthers" "gave" "general" "generally" "get" "gets" "give" "given" "gives" "go" "goes" "going" "good" "goods" "got" "great" "greater" "greatest" "group" "grouped" "grouping" "groups" "had" "hadn't" "has" "hasn't" "have" "haven't" "having" "he" "he'd" "he'll" "he's" "her" "here" "here's" "hers" "herself" "high" "high" "high" "higher" "highest" "him" "himself" "his" "hisself" "how" "how's" "however" "i" "i'd" "i'll" "i'm" "i've" "idem" "if" "ilk" "important" "in" "including" "inside" "interest" "interested" "interesting" "interests" "into" "is" "isn't" "it" "it's" "its" "itself" "just" "keep" "keeps" "kind" "knew" "know" "known" "knows" "large" "largely" "last" "later" "latest" "least" "less" "let" "let's" "lets" "like" "likely" "long" "longer" "longest" "made" "make" "making" "man" "many" "may" "me" "member" "members" "men" "might" "mightn't" "mine" "minus" "more" "most" "mostly" "mr" "mrs" "much" "must" "mustn't" "my" "myself" "naught" "near" "necessary" "need" "needed" "needing" "needn't" "needs" "neither" "never" "new" "new" "newer" "newest" "next" "no" "nobody" "non" "none" "noone" "nor" "not" "nothing" "notwithstanding" "now" "nowhere" "number" "numbers" "of" "off" "often" "old" "older" "oldest" "on" "once" "one" "oneself" "only" "onto" "open" "opened" "opening" "opens" "opposite" "or" "order" "ordered" "ordering" "orders" "other" "others" "otherwise" "ought" "oughtn't" "our" "ours" "ourself" "ourselves" "out" "outside" "over" "own" "part" "parted" "parting" "parts" "past" "pending" "per" "perhaps" "place" "places" "plus" "point" "pointed" "pointing" "points" "possible" "present" "presented" "presenting" "presents" "problem" "problems" "put" "puts" "quite" "rather" "really" "regarding" "right" "right" "room" "rooms" "round" "said" "same" "save" "saw" "say" "says" "second" "seconds" "see" "seem" "seemed" "seeming" "seems" "seen" "sees" "self" "several" "shall" "shan't" "she" "she'd" "she'll" "she's" "should" "shouldn't" "show" "showed" "showing" "shows" "side" "sides" "since" "small" "smaller" "smallest" "so" "some" "somebody" "someone" "something" "somewhat" "somewhere" "state" "states" "still" "still" "such" "suchlike" "sundry" "sure" "take" "taken" "than" "that" "that's" "the" "thee" "their" "theirs" "them" "themselves" "then" "there" "there's" "therefore" "these" "they" "they'd" "they'll" "they're" "they've" "thine" "thing" "things" "think" "thinks" "this" "those" "thou" "though" "thought" "thoughts" "three" "through" "throughout" "thus" "thyself" "till" "to" "today" "together" "too" "took" "tother" "toward" "towards" "turn" "turned" "turning" "turns" "twain" "two" "under" "underneath" "unless" "unlike" "until" "up" "upon" "us" "use" "used" "uses" "various" "versus" "very" "via" "vis-a-vis" "want" "wanted" "wanting" "wants" "was" "wasn't" "way" "ways" "we" "we'd" "we'll" "we're" "we've" "well" "wells" "went" "were" "weren't" "what" "what's" "whatall" "whatever" "whatsoever" "when" "when's" "where" "where's" "whereas" "wherewith" "wherewithal" "whether" "which" "whichever" "whichsoever" "while" "who" "who's" "whoever" "whole" "whom" "whomever" "whomso" "whomsoever" "whose" "whosoever" "why" "why's" "will" "with" "within" "without" "won't" "work" "worked" "working" "works" "worth" "would" "wouldn't" "ye" "year" "years" "yet" "yon" "yonder" "you" "you'd" "you'll" "you're" "you've" "you-all" "young" "younger" "youngest" "your" "yours" "yourself" "yourselves"))

    (define stopwords-hash-en (sequence->hashtable stopwords-hash-en))

    ))

