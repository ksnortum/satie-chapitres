\version "2.24.1"

\header {
  title        = "Chapitres Tournés en Tous Sens"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  source       = "https://s9.imslp.org/files/imglnks/usimg/7/74/IMSLP08106-Satie_-_Chapitres_Tourn%C3%A9s_En_Tous_Sens.pdf"

  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 copyright =  \markup { 
    "© 2023 Knute Snortum. This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

\paper {
  system-system-spacing.padding = 2
  
  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  print-all-headers = ##t
  
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\layout { 
  \context {
    \Score
    \hide BarLine
    \hide SpanBar
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }
}
