\version "2.24.0"
\language "english"

% -------------
% --- Notes ---
% -------------

% Because Satie eschewed time signatures and bar lines, some of the
% rhythms and phrasings are ambiguous.  I have attempted to make the 
% engraving as well as the MIDI file look and sound as I might interpret
% the phrasing.  Other interpretations are also valid.

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 20: Beat two, right hand, lower note in chord is ef, not ff
% Bar 28: Added bass clef 
% Bar 35: Changed f,4 to f,8 in left hand
% Bar 37: Change last beat s8 to r8, right hand

% -------------------
% --- Definitions ---
% -------------------

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

moveDynamicsA = \tweak X-offset -3 \etc

slurShapeA = \shape #'((0 . -2) (0 . -1) (0 . 0) (0 . 0)) \etc

% --- Put nonmusical text into variables
textOmbre = "Ils sont assis dans l'ombre" 
textReflect = "Ils réfléchissent"
textMarin = "Jonas dit: Je suis le Latude marin"
textFrancais = "Latude dit: Je suis le Jonas français"
textSoleil = "Il leur semble qu'ils voient le bon vieux soleil"
textSortir = "Ils ne pensent qu'à sortir"
textPlusieurs = "Plusieurs siecles les séparant"
textCela = "Cela sent le renfermé, d'apre eux"

% --- Musical text
modere = "Soyez modéré"
sortez = "Sortez"
apparent = "Apparent"
dehors = "Dehors"
sombre = "Sombre"
temps = \markup { \center-column { "Temps court" (espace) } }
retenant = \markup { \italic { "en retenant" } }
impression = \markup { \italic { "Elargissez votre impression" } }

% -------------
% --- Music ---
% -------------

highVoice = \relative c' {
  \tempo \modere
  \autoBeamOff
  \partial 8 s8
  s2 * 4 |
  
  \barNumberCheck #5
  <d f bf>8-. ^\textOmbre s <e g>-. s |
  <d f d'>8-. s <c ef g>-. s |
  <d f bf>8-. s <e? g>-. s |
  <d f d'>8-. s <c ef g>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  
  \barNumberCheck #13
  s8 a' ( c [ d ] |
  e!4 a |
  e8 [ f? e d ] |
  c4 b |
  a8 )
  
  \barNumberCheck #17
  s s4 ^\textReflect |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  <ds, fs ds'>8-. ^\textPlusieurs s <cs e gs>-. s |
  <ds fs ds'>8-. s <cs e gs>-. s |
  <ds fs ds'>8-. s <cs e gs>-. s |
  \time 3/4
  <ds fs ds'>8-. s <cs e gs>-. \bar ""
  
  \barNumberCheck #24
  c'!8 ( e [ f! ] |
  \time 2/4
  g!4 c |
  g8 [ a! g f ] |
  e?4 d |
  c8 ) \bar ""
  
  \barNumberCheck #28
  f,8 ^\pp ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) \bar ""
  
  \barNumberCheck #32
  s8 ^\textMarin s4 |
  bf'4-> a-> |
  g4-> f-> |
  e4-> c-> |
  <f, a d>8-_ \bar ""
  
  \barNumberCheck #36
  s8 ^\textFrancais s4
  <a cs e>8-. b'\rest <a, d f>-. b'\rest |
  <bf, d f bf>4-> s |
  \time 3/4
  <c g' c>8-. r <f a d f>-. r <g c e g>-. r |
  
  \barNumberCheck #40
  \time 2/4
  <fs' a fs'>8-. \moveDynamicsA ^\pp s <e g b>-. s |
  <d f! d'>8-. ^\< s <c? ef g>-. s |
  <bf df bf'>8-. s <af cf ef>-. s |
  <fs a! fs'>8-. s \! <e! g! b!>-. s |
  <fs a! fs'>8-. s <e g b>-. s |
  <fs a fs'>8-. s <e g b>-. \bar ""
  
  \barNumberCheck #45
  s8 ^\textCela |
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #49
  \clef bass
  ef,,8 ( g [ af ] |
  \time 2/4
  bf4 ef |
  bf8 [ c bf af ] |
  g4 f |
  ef8 ) s4. |
  
  \barNumberCheck #54
  \clef treble
  fs''8 ^\f [ fs fs gs ] ( |
  fs4 cs ) |
  \clef bass
  <e,! gs cs>8-. r <es as cs!>-. r |
  <e! gs cs>8-. r <es as cs!>-. r |
  e'!8 ( [ ds cs fs ] |
  ds8 [ cs ] b ) r |
  
  \barNumberCheck #60
  \clef treble
  s8 s ^\< s4 |
  <g''? b>8-. s <a cs>-. s \! |
  <b d>2-> |
  <c! e>8-. s <b d>-. s |
  <a c?>8-. s <g! b>-. s |
  <f! a>8-. s <e g>-. s |
  <d f!>8-. s8 s4 |
  s8
  
  \barNumberCheck #67
  g, ^\textSortir \p ( b [ c ] |
  d4 g ^\< |
  d8 [ e! d c ] \! |
  b4 a |
  b2-> ) ^\f |
  
  \barNumberCheck #72
  s2 ^\impression |
  s2 * 3 |
}

upperMiddle = \relative c'' {
  \partial 8 s8
  s2 * 4 |
  
  \barNumberCheck #5
  s2 * 8 |
  
  \barNumberCheck #13
  s2 |
  c4 ( c |
  b?4 b |
  gs4 a |
  a8 )
  
  \barNumberCheck #17
  s s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \time 2/4 
  f'4 f |
  df4 c |
  bf2 |
  bf8 \bar ""
  
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #32
  s8 s4 |
  s8 <d,? f> s <c f> |
  s8 <c e> s <a d> |
  s8 <bf c> s <e, bf'!> |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #40
  \time 2/4
  cs''4 ( b |
  a4 g |
  f?4 ef |
  df4 cf |
  df4 cf |
  df4 cf8 ) \bar ""
  
  \barNumberCheck #45
  s8 |
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4  
  s2 * 4 |
  
  \barNumberCheck #54
  s2 * 4 |
  \clef bass
  <gs b>8-. s <e! a!>-. s |
  <fs b>8-. s <ds gs>8-. s |
  
  \barNumberCheck #60
  \clef treble
  r8 a'' ( cs d! |
  e4 fs |
  g!2-> ) |
  a8 ( [ gs g fs ] |
  f!8 [ e ds d ] |
  cs8 [ c b bf ] |
  a8 ) 
  s s4 |
  
  \barNumberCheck #67
  s2 |
  g4 gs |
  a b8 a |
  gs4 fs |
  gs2 |
  
  \barNumberCheck #72
  s2 * 4 |
}

lowerMiddle = \relative c' {
  \autoBeamOff
  \partial 8 s8
  <af d>4 ( <bf e> |
  <af d>4 <bf e> |
  <af d>4 <bf e> |
  <af d>4 <bf e>8 ) s8 |
  
  \barNumberCheck #5
  s2 * 8 |
  
  \barNumberCheck #13
  s2 |
  \clef treble
  g'4 ( fs |
  g4 fs |
  e4 f! |
  fs8 )
  
  \barNumberCheck #17
  \clef bass
  s8 <ef, af>4 ( |
  <f bf>4 <ef af> |
  <f bf>4 <ef af> |
  \time 3/4
  <f bf>4 <ef af> <f bf!>8 ) s |
  
  \barNumberCheck #21
  \time 2/4
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \clef treble
  \time 2/4
  df''4 ( c |
  b!4 a!4 |
  g4 fs |
  g8 ) \bar ""
  
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
    
  \barNumberCheck #32
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #40
  \time 2/4
  s2 * 5 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  s8 ^\p |
  <cs,, fs>4 ( <d? g!>4 |
  <cs fs>4 <d? g!>4 |
  <cs fs>4 <d? g!>4 |
  \time 3/4
  <cs fs>4 <d g>8 ) \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4
  s8 af, ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  
  \barNumberCheck #54
  df8 ) s s4 |
  s2 * 5 |
  
  \barNumberCheck #60
  s4 s ^\textSoleil
  s2 * 6 |
  
  \barNumberCheck #67
  s2 |
  d''4 ef |
  f4 fs |
  e!8 s s4 |
  s2 |
  
  \barNumberCheck #72
  <g,! c f>2-_ |
  <f a d>2-_ |
  <e g c>2-_ ~ |
  q4 s |
}

lowVoice = \relative c {
  \autoBeamOff
  \partial 8 c8 ( 
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) s |
  
  \barNumberCheck #5
  bf4 ( c |
  a4 g ) |
  bf4 \slurShapeA ( c |
  a4 g |
  f4 ef |
  f4 ef |
  f4 ef |
  f4 ef ) |
  
  \barNumberCheck #13
  s2 |
  \clef treble
  c'4 ( d |
  e4 b |
  d2 |
  cs8 )
  
  \barNumberCheck #17
  \clef bass
  g,!8 ( b? [ c? ] |
  d?8 ) g, ( b [ c ] |
  d8 ) g, ( b [ c ] |
  \time 3/4
  d8 ) g, ( b [ c ] d ) s |
  
  \barNumberCheck #21
  \time 2/4
  b'!4 ( a! |
  b4 a |
  b4 a |
  \time 3/4
  b4 a8 ) \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \clef treble
  \time 2/4
  bf'4 ( af |
  f4 ef |
  d?2 |
  e?8 ) \bar ""
  
  \barNumberCheck #28
  \clef bass
  s8 <g, b!>4 ( |
  <f a?>4 <g b> |
  <f a>4 <g b> |
  <f a>4 <g b> |
  <f a>8 ) \bar ""
  
  \barNumberCheck #32
  f,8 ^\p ( a [ bf ] |
  c4 f |
  c8 [ d c bf ] |
  a4 g |
  f8 ) \bar ""
  
  \barNumberCheck #36
  <d, d'>8-. <f f'>-. [ <g g'>-. ] |
  <a a'>8-. r <d d'> r |
  <g, g'>8-. [ <a a'>-. <g g'>-. <f f'>-. ] |
  \time 3/4
  <e e'>8-. c'\rest <d, d'>-. c'\rest <c, c'> c'\rest |
  
  \barNumberCheck #40
  \time 2/4
  s2 * 5 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  e?8 ( |
  gs8 [ a ] b ) e, ( |
  gs8 [ a ] b ) e, ( |
  gs8 [ a ] b ) e, ( |
  \time 3/4 
  gs8 [ a ] b ) \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #54
  s4 <b'! d!> ( |
  <a? c?> <gs b> ) |
  <cs,, cs'>8-. r <as as'>-. r |
  <cs cs'>8-. r <as as'>-. r |
  <e! e'!>8-. s <a! a'!>-. s |
  <b b'>8-. s <gs gs'>-. r |
  
  \barNumberCheck #60
  s2 * 7 |
  
  \barNumberCheck #67
  s2 |
  b''4 ( c |
  d4 -\retenant b |
  e!4 b |
  e2-> ) |
  
  % \barNumberCheck #72
  \grace { c,,,8 [ g'! c ] } <c g'! c>2 |
  \grace { a,8 [ f' c' ] } <c f c'>2 |
  \grace { a,8 [ g' c ] } <c g' c>2 ~ |
  q4 s |
}

% --- Includes musical terms
dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 8 s8 \pp 
  s2 * 4 | 
  
  \barNumberCheck #5
  s2 -\sortez
  s2 * 7 |
  
  \barNumberCheck #13
  s8 s \p s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #17
  s8 \pp s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  s8 \p s -\apparent s4
  s2 |
  s2 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 \p s4 |
  \time 2/4
  s2 * 3 |
  s8 \bar ""
    
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #32
  s8 s4 |
  s2 |
  s4. s8 \>
  s2 |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 \f s4 |
  s2 |
  s8 \< s4. |
  \time 3/4
  s2 s4 \! |
  
  \barNumberCheck #40
  \time 2/4
  s2 -\dehors |
  s2 * 4 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  s8 -\sombre |
  s2 * 3 |
  \time 3/4
  s4 s8
  
  \barNumberCheck #49
  s8 \pp s4 |
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #54
  s2 |
  s2 |
  s2 \pp |
  s2 |
  s2 \p \< |
  s2 \! |
  
  \barNumberCheck #60
  s8 s8 \f s4 |
  s2 |
  s2 |
  s2 \pp  |
  s2 |
  s2 |
  s8 s -\temps s4 |
  
  \barNumberCheck #67
  s2 * 4 |
  s2 |
  \grace { s8 \ff s s } 
  
  \barNumberCheck #72
  s2 * 4 |
}

forcebreaks = {
  \partial 8 s8
  s2 * 4 \break\noPageBreak |
  s2 * 6 \break\noPageBreak |
  s2 * 2 |
  s2 * 4 |
  s8\break\noPageBreak s4. |
  s2 * 2 |
  \time 3/4
  s2.\break\noPageBreak |
  \time 2/4
  s2 * 3 |
  \time 3/4
  s4.\break\noPageBreak s4. |
  \time 2/4
  s2 * 3 
  s8\pageBreak s4. |
  
  s2 * 3 
  s8\break s4. |
  s2 * 3 
  s8\break s4. |
  s2 * 2 |
  \time 3/4
  s2.\break
  \time 2/4
  s2 * 5
  s4.\break s8 |
  s2 * 3 |
  \time 3/4
  s4.\pageBreak s4. |
  
  s2 * 6\break |
  s2 * 4\break |
  s2 * 6 
  s8\break s4. |
  s2 * 9\pageBreak |
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

regretsNotes = \score {
  \header {
    title = ##f
    subtitle = "Regrets des Enfermés"
    composer = ##f
  }
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics \dynamics
    \new Staff = "lower" \lower
    \new Devnull \forcebreaks
  >>
}

regretsMidi = \book {
  \bookOutputName "regrets-music"
  \score {
    \new PianoStaff <<
      \new Staff ="upper" << \upper \dynamics >>
      \new Staff = "lower" << \lower \dynamics >>
    >>
    \midi { 
      \tempo 4 = 80
    }
  }
}
