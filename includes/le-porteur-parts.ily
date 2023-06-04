\version "2.24.0"
\language "english"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Measure 13: a'8 -> a'8.
% Measure 24: gs'8 -> gs'8.
% Last chord: missing bass clef in left hand

% ----------------
% --- Preamble ---
% ----------------

lePotuerPreamble = \markup {
  \column {
    \line { \hspace #25 Il les porte sur le dos. Son air }
    \line { \hspace #23 est narquois et rempli de certitude. }
    \line { \hspace #25 Sa force étonné les petits enfants. }
    \line { \hspace #25 Nous le voyons alors qu'il trans- }
    \line { \hspace #23 porte une pierre énorme, cent fois }
    \line { \hspace #23 plus grosse que lui \italic { (c'est une pierre } }
    \line { \hspace #23 \italic { ponce.) } }
  }
}

% -------------------
% --- Definitions ---
% -------------------

pause = 
  #(define-music-function (mus) (ly:music?)
     #{
       \tempo 4 = 15 #mus \tempo 4 = 40
     #})

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}

octaveOff = \ottava #0

moveMarkupA = \tweak Y-offset 30 \etc
moveDynamicA = \tweak X-offset -2.5 \etc
moveTextA = \tweak X-offset -3 \etc

% --- Put nonmusical text into variables
phraseJambes = "En traînant les jambes"
textJambes = -\markup { \italic \phraseJambes }
phraseEchappe = "Il sent que la pierre lui échappe: elle va tomber" 
textEchappe = _\markup { \phraseEchappe }
phraseTombe = "Ça y est: elle tombe"
textTombe = ^\markup { Ça y est: \italic { elle tombe } }

% --- Musical text
phraseAvecMal = "Avec beaucoup de mal"
avec_mal = -\markup { \italic \phraseAvecMal }
phraseAttendez = "Attendez"
attendez = -\markup { \italic \phraseAttendez }
phrasePeniblement = "Péniblement et par à coups"
peniblement = -\markup { \italic \phrasePeniblement }
phraseArret = "Arrêt"
arret = -\markup { \italic \phraseArret }

% -------------
% --- Music ---
% -------------

highVoice = \relative c'' {
  \set Score.tempoHideNote = ##t
  \tempo "Très lent" 4 = 40
  d8-. \moveMarkupA ^\lePotuerPreamble g-. d8.-. ^\< d16-. |
  d8-. g-. d4-_ \! |
  \time 3/4
  bf16 ( d f? bf <af d>8 bf!16 f d8 bf!16 d ) |
  \time 2/4
  f4-> ( df |
  f4 df |
  f4 df ) |
  \tempo 4 = 120 % for MIDI
  s2 |
  s2 |
  
  \barNumberCheck #9
  \tempo 4 = 40
  g,16 c? a? f g c \pause a _\fermata f |
  g16 c a f \pause g _\fermata c a f |
  g16 f ef f g f ef! f |
  \time 3/4
  g16 \pause f _\fermata ef f g f ef! f g f \pause ef _\fermata f |
  
  \barNumberCheck #13
  \time 2/4
  a8-. d-. a8.-. a16-. |
  a8-. d-. a4-_ |
  f16 ( a c f a8 f16 c |
  a8 f16 a c4 ) |
  
  \barNumberCheck #17
  \time 3/4
  b16 ( ^\< e cs a \! gs! cs \pause as \fermata fs e ^\f a fs! d ) |
  \time 2/4
  \tempo 4 = 120
  s2 |
  s2 |
  
  \barNumberCheck #20
  \time 2/4
  \tempo 4 = 40
  a'16 ( d b \pause g _\fermata a d b g |
  \pause a16 _\fermata d b g a \pause d _\fermata b g |
  a16 \pause g _\fermata f g \pause a _\fermata g f g |
  \time 3/4
  a16 g \pause f _\fermata g a g f g \pause a _\fermata g f g |
  \time 2/4
  cs16^\< b a b es ds cs! ds\! |
  e!16 a! fs d! g! c! a f ) |
  
  \barNumberCheck #26
  \octaveUp
  b8-. \textEchappe e-. b8.-. b16-. |
  b8-. e-. b4-. |
  \time 3/4
  g16 ( b d g b8 g16 d b8 g16 \pause b _\fermata ) |
  \time 2/4
  \octaveOff g, ( <b cs f> \pause g _\fermata <b cs f> g4-. ) |
  \tempo 4 = 80
  s2 |
  \tempo 4 = 40
  <bs, fs' gs>2^> \moveDynamicA ^\ff \moveTextA \textTombe
}

upperMiddle = \relative c'' {
  a4 bf |
  c4 bf |
  \time 3/4
  s4 d s |
  \time 2/4
  <g, cf>4 af  |
  <g cf>4 af |
  <g cf>4 af \! |
  s2 |
  s2 |
  
  \barNumberCheck #9
  s2 * 3 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  d,='16 g \textJambes e c d g e c |
  d16 g e c d g e c |
  d c bf c d c bf! c |
  d c bf c d g e c |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #20
  s2 * 3 |
  \time 3/4
  s2. |
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 * 3
}

lowerMiddle = \relative c' {
  \clef treble
  f4 ^\p ( gf |
  af4 af! ) |
  \time 3/4
  g!4-> f!-_ c'-_ |
  \time 2/4
  f,4 ( ef |
  f4 ef |
  f4 ef ) |
  s2 |
  s2 |
  
  \barNumberCheck #9
  s2 * 3 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #20
  s2 * 3 |
  \time 3/4
  s2. |
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 * 3
}

lowVoice = \relative c' {
  ef4 ( e |
  f4 fs ) |
  \time 3/4
  d4-> ef-_ e-_
  \time 2/4
  df4-> ( cf |
  df4 cf |
  df4 cf ) |
  s2 |
  s2 |
  
  \barNumberCheck #9
  \clef bass
  <f,,, f'>2 ~ ( ^\pp |
  q2 |
  <b! b'!>2 ~ |
  \time 3/4
  q4 <f' f'> <df df'>_> ) |
  \time 2/4
  
  \barNumberCheck #13
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  \staffUp <e''=' gs>8_. [ \staffDown \stemUp gs,^. ]
    \staffUp \stemDown <cs es>_. [ \staffDown \stemUp es,^. ]
    \staffUp \stemDown <a! cs!>_. \staffDown \stemUp cs,^. \stemNeutral |
  \time 2/4
  s2 | 
  s2 |
  
  \barNumberCheck #20
  \time 2/4
  <g,! g'!>2 ~ ( |
  q2 |
  <cs cs'>2 ~ |
  \time 3/4
  q4 <g' g'> <ef ef'>_> ) |
  \time 2/4
  \staffUp \stemDown gs''8_. e_. gs!8._. gs16_. |
  <a cs>8_. \staffDown \stemUp cs,^. 
    \staffUp \stemDown <c' e>_. \staffDown \stemUp e,^. \stemNeutral |
    
  \barNumberCheck #26
  \clef treble
  \stemDown
  e16 ( a fs d e a fs! d |
  e16 a fs d e a fs! d |
  \time 3/4
  e16 d c d e d c d e d c d |
  \time 2/4
  f? ef f ef f4_. ) |
  s2 |
  \clef bass
  <d,, as' e'!>2_>
}

% --- Includes musical terms
dynamics = {
  \override TextScript.Y-offset = -0.5
  \time 2/4
  s4 \avec_mal s |
  s2 |
  \time 3/4
  s16 s \f s8 s4 \< s8 s16 \! s |
  \time 2/4 
  s4 s \p \> |
  s2 |
  s4 s \! |
  s2 \attendez |
  s2 |
  
  \barNumberCheck #9
  s2 \peniblement |
  s2 \break |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 \attendez |
  s2 |
  
  \barNumberCheck #20
  s2 \pp |
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 \pp |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 \arret |
  s2 |
}

forceBreaks = {
  \time 2/4
  s2 * 2 |
  \time 3/4
  s2.\break |
  \time 2/4
  s2 * 6 |
  s2\break |
  s2
  \time 3/4
  s2.
  \time 2/4
  s2 | 
  s2\pageBreak |
  s2 * 2 |
  \time 3/4
  s2.
  \time 2/4
  s2 |
  s2\break
  \time 2/4
  s2 * 3 |
  \time 3/4
  s2.\break
  \time 2/4
  s2 * 3 |
  s2\break
  \time 3/4
  s2.
  \time 2/4
  s2 * 3 |
  s2\pageBreak
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 2/4
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

lePorteurNotes = \score {
  \header {
    title = ##f
    subtitle = "Le Porteur de Grosses Pierres"
    composer = ##f
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics \dynamics
    \new Staff = "lower" \lower
    \new Devnull \forceBreaks
  >>
}

lePorteurMidi = \book {
  \bookOutputName "le-porteur-music"
  \score {
    <<
      \new Staff ="upper" << \upper \dynamics >>
      \new Staff = "lower" << \lower \dynamics >>
    >>
    \midi {}
  }
}