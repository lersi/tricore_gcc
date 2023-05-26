      SUBROUTINE USER_MESSAGE (MESSAGE)
      CHARACTER MSGL*1
      CHARACTER, INTENT(IN) :: MESSAGE*(*)
      CHARACTER(21)  :: LEADER(4)
      CHARACTER(132) :: MSG_TEXT*132
      LOGICAL, SAVE  :: FIRST
 100  IR = MIN (LM, IL+INDEX(MESSAGE(MIN(LM,IL+1):LM)//MSGL,MSGL))
      IF (FIRST) THEN
        IF (INDEX(MESSAGE(IL:IR),'WARN') .NE. 0) THEN
          K = 2
        ELSE IF (INDEX(MESSAGE(IL:IR),'INFORM') .NE. 0) THEN
          K = 3
          GO TO 100
        ENDIF
      ELSE
        IF (MESSAGE(IR:IR) .EQ. MSGL) THEN
          MSG_TEXT = LEADER(K)//MESSAGE(IL+1:IR-1)
        ENDIF
      ENDIF
      END
