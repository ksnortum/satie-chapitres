\version "2.24.0"
\language "english"

\include "header-paper.ily"

% -------------------
% --- Definitions ---
% -------------------

#(define (my-line-breaking-callback grob)
  (let* ((orig (ly:grob-original grob))
         (siblings (ly:spanner-broken-into orig)))
    (if (not (eq? grob (car siblings)))
        (ly:grob-set-property! grob 'text (markup #:normal-text
                                                  #:small 
                                                  #:italic 
                                                  #:concat("8" #:super "va"))))))

octaveUp = {
  \set ottavation = \markup \normal-text \small \italic \concat { 
    8 \super va " pour la main droite seulement"
  }
  \override Staff.OttavaBracket.after-line-breaking = #my-line-breaking-callback
  \ottava 1
}
octaveOff = \ottava 0

slurShapeA = \shape #'((-1 . 2.5) (0 . 2.5) (0 . 2) (0 . 2)) \etc
tieShapeA  = \shape #'((0 . -0.5) (0 . -0.75) (0 . -0.75) (-0.5 . -0.5)) \etc
tieShapeB  = \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) \etc

moveTempoA = \once \override MetronomeMark.X-offset = -1
moveTextLeftA = \once \override TextScript.X-offset = -2

% --- Put nonmusical text into variables
phrasePoorHusband = "Le pauvre mari (son thème)"
phraseListen = "Écoute-moi"
phraseMsThing = "Madame Chose a un parapluie en os"
phraseMissMachin = 
  "Mademoiselle Machin épouse un homme qui est sec comme un coucou" 
phraseListenTwo = "Écoute-moi donc!"
textImpatience = ^ \markup \italic "Marque d'impatience du pauvre mari"
textSpeak = _ "Laissez moi parler"
textWoodHat = _ "J'ai envie d'un chapeau en acajou massif"
textPainSide = _ "La concierge a mal dans les côtés"
textHusbandDies = ^ \markup "La mari se meurt d'epuisement"

% --- Musical text
ral = \markup \italic ralentir
pLie = \markup { \dynamic p \italic lié }
ppFaint = \markup { \dynamic pp \italic { en un pauvre souffle } }
arret = \markup \large "Arrêt"

% -------------
% --- Music ---
% -------------

highVoice = \relative c'' {
  \set Score.tempoHideNote = ##t
  \tempo "Vif" 4. = 144
  s8 s <ef f> -. <df fs>8 -. s s |
  s2. |
  s8 s <ef f!> -. <df fs> -. s s |
  s2. |
  a8 _\phraseListen a8 a a a a |
  a8 a a a a a |
  a8 a a a a a |
  
  \barNumberCheck #8
  
  s8 s \octaveUp d'8 \slurShapeA ( ^\phrasePoorHusband g4 ) g8 |
  g4. -_ ~ g4 g8 |
  fs4 a8 d4 d8 |
  d2. ( |
  b4 ) \octaveOff s8 s f,,! a | 
  g8 f a g f a | 
  g8 f a g f a |
  g8 ^\phraseMsThing f8 e d e f |
  
  \barNumberCheck #16
  
  g8 f e d e f |
  g8 f e d e f |
  g8 g g g g g ^\< |
  g8 g g g g g |
  g8 c\! b a g f |
  e8 f g e f g |
  d8 c b a b ^\> c |
  b8 c d b c d |
  
  \barNumberCheck #24
  
  c8 g a bf a \! g |
  s2. ^\phraseMissMachin |
  s2. * 6 |
  
  \barNumberCheck #32
  
  s8 s bf ( d4 -. ) d8 -. |
  d4. -_ ~ d4 d8 ( |
  c!4 e8 g4 ) g8 -. |
  g2. ( |
  f4 ) s8 s4. |
  s8 ^\p s <ef' f> -. <df fs> -. s s |
  s2. |
  s8 s <ef f!> -. <df fs> -. s s |
  
  \barNumberCheck #40
  
  s2. |
  a8 a a a a a |
  a8 a a a a a |
  a8 a a a a a |
  s8 s \octaveUp d'8 \slurShapeA ( g4 ) g8 |
  g4. -_ ~ g4 ( g8 |
  fs4 a8 d4 _\ral ) d8 ( |
  d2. |
  
  \barNumberCheck #48
  
  b4 ) \octaveOff s8 \moveTextLeftA s4. _\arret |
  s2. * 5 |
  
  \barNumberCheck #54
}

upperMiddle = \relative c'' {
  b8 a8 g b a \textImpatience g |
  a8 \textSpeak c8 b b d g, |
  b8 a g b a g |
  a8 c b b d g, |
  s4. s8 s <c, ef> -. |
  <df fs>8 -. s <c ef> -. <df fs!> -. s <c ef!> -. |
  <df fs>8 -. s s s4. |
  
  \barNumberCheck #8
  
  a'8 \textWoodHat c b b d g, |
  c8 d e d df c |
  a8 d! c b d g |
  fs8 e d a' g fs! |
  g8 d b g s <bf, ds> -. |
  <c e>8 -. s <bf ds> -. <c e> -. s <bf! ds!> -. |
  <c e>8 -. s <bf ds> -. <c e> -. s <bf! ds!> -. |
  <c e>8 -. s s s4. |
  
  \barNumberCheck #16
  
  s2. * 8 | 
  
  \barNumberCheck #24
  
  s2. * 4 | 
  s4. ^\< f8 ef df \! | 
  cf8 ^\> df ef df! s s \! |
  s2. | s |
  
  \barNumberCheck #32
  
  s2. | s | s | s | 
  s4. c8 f a |
  b8 a g b a g |
  a8 c b b d g, |
  b8 _\phraseListenTwo a g b a g |
  
  \barNumberCheck #40
  
  a8 c b b d g, |
  s4. s8 s <c, ef> -. |
  <df fs>8 -. s <c ef> -. <df fs!> -. s <c ef> -. |
  <df fs>8 -. s s s4. |
  a'8 \textPainSide c b b d g, |
  c8 d e d df c |
  a8 d? c b d g |
  fs8 e d a' g fs! |
  
  \barNumberCheck #48
  
  g4 s8 s4. |
  s2. * 5 |
  
  \barNumberCheck #54
}

lowerMiddle = \relative c' {
  s2. * 7 | 
  \barNumberCheck #8
  s2. * 8 | 
  \barNumberCheck #16
  s2. * 8 |
  
  \barNumberCheck #24
  
  s2. |
  s4. s8 s <af cs> -. |
  <bf d>8 -. s <af cs> -. <bf! d> -. s <af! cs!> -. |
  <bf d>8 -. s s s4. |
  s2. |
  s4. s8 af gf |
  d!8 d d d d d |
  d8 d d s s s |
  
  \barNumberCheck #32
  s2. * 8 |
  \barNumberCheck #40
  s2. * 8 |
  
  \barNumberCheck #48
  
  s2. |
  <<
    {
      s8 s \tempo "Lent (tres)" 4. = 60 
        \tag layout { d ( _\ppFaint \textHusbandDies }
        \tag midi   { d ( \pp }
        g4 g8 |
      g4. ~ g4 g8 |
      fs4 af8 d?4 d8 |
      d2. |
      bf2 ) s4 |
    } \\ {
      \voiceThree
      s4. d,4. \tieShapeA ~ |
      d2. |
      ds2. |
      e?2. \tieShapeB ~ |
      e2 s4 |
    }
  >>
  
  \barNumberCheck #54
}

lowVoice = \relative c' {
  s2. * 7 | 
  \barNumberCheck #8
  s2. * 8 |
  \barNumberCheck #16
  
  s8 s <af cs> -. <bf c> -. s s |
  s8 s <af cs> -. <bf c> -. s s |
  s2. |
  s2. |
  s8 s8 <g, g,> ( <c c,>4 ) q8 -. |
  <c c,>4. -> ~ q4 q8 -. |
  <b b,>4 -. <d d,>8 -. <g g,>4 -. q8 -. |
  <g g,>2. -> ( |
  
  \barNumberCheck #24
  
  <e e,>4 ) s8 s4. |
  f8 f f f f f |
  f8 f f f f f |
  f8 f f f f f |
  f8 a cs s4. |
  s2. |
  s8 s <fs,, fs,> -. <ef ef,> -. s <fs! fs,!> -. |
  <ef ef,> -. s s c' d e? |
  
  \barNumberCheck #32
  
  fs8 g fs e fs! g |
  fs8 a d, a' g f |
  e8 a g e b' a |
  g8 f e d c b |
  d8\< f a s s s\! |
  s2. | s | s |
  
  \barNumberCheck #40
  
  s2. * 8 |
  
  \barNumberCheck #48
  
  s2. |
  s4. <c, g c,>4. ~ |
  q2. |
  <c af c,>2. |
  <c fs, c>2. ~ |
  q2. |
  
  \barNumberCheck #54
}
dynamics = {
  \tag layout { s2.-\pLie | }
  \tag midi   { s2.\p | }
  s2. * 6 |
  
  \barNumberCheck #8
  
  s2. * 8 |
  
  \barNumberCheck #16
  
  s2. * 4 |
  s4 s8\f s4. |
  s2. * 3 |
  
  \barNumberCheck #24
  s2. |
  s2.\p |
  s2. * 4 |
  s2.\pp |
  s2. |
  
  \barNumberCheck #32
  
  s2. * 5 |
  s2. |
  
}

forceBreaks = {
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 6/8
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

celleNotes = \score {
  \header {
    title = ##f
    subtitle = "Celle Qui Parle Trop"
    composer = ##f
  }
  \keepWithTag #'layout
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics \dynamics
    \new Staff = "lower" \lower
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \remove Ottava_spanner_engraver
    }
    \context {
      \Voice
      \consists Ottava_spanner_engraver
    }
  }
}

celleMidi = \book {
  \bookOutputName "celle-music"
  \score {
    \keepWithTag #'midi
    <<
      \new Staff << \upper \dynamics >>
      \new Staff << \lower \dynamics >>
    >>
    \midi {}
  }
}