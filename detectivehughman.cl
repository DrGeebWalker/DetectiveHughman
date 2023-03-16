;;;;detective hughman

;;;defined in package
(in-package :detective-hughman)

(webaction-project 
 "detectivehughman"
 :destination ""
 :project-prefix "/detective-hughman/"
 :index "start"
 :map
 '(("start" action-init "start-page.clp")
   ("pre-gallary" "pre-gallary.clp")
   ("tutorial" tutorial-page)
   ("tutorial2" to-tutorial2)
   ("tutorial3" to-tutorial3)
   ("tutorialend" "tutorial-end.clp")
   ("gallary" "gallary.clp")
   ("hall" "hall.clp")
   ("lounge" "refreshments.clp")
   ("investigate" "investigate-body.clp")
   ("painting1" "painting1.clp")
   ("painting2" "painting2.clp")
   ("painting3" "painting3.clp")
   ("painting4" "painting4.clp")
   ("trashcan" "trashcan.clp")
   ("addPoison" add-poison "trashcan.clp")
   ("addMilli" add-milli "painting4.clp")
   ("addMoney" add-money "hall.clp")
   ("addLetter" add-letter "refreshments.clp")
   ("addArt1" add-art1 "painting1.clp")
   ("addArt2" add-art2 "painting2.clp")
   ("addArt3" add-art3 "painting3.clp")
   ("addArt4" add-art4 "painting4.clp")
   )
 )

;;;what if every time restart is hit, it's loaded
;;;like in load package

;;;inventory and profiles are updated throughout game
;;;this keeps track of it and allows for new sessions
(defun action-init (req ent)
  (declare (ignore ent))
  
  (setf (websession-variable (websession-from-req req) "tutorialphase")
    "tutorial-phase1.clp")
  
  (setf (websession-variable (websession-from-req req) "inventory")
     `(gum-wrapper badge))
  
  :continue)


;;;tracks what phase of tutorial player is at
;;;incase they choose the go-back button
(defun tutorial-page (req ent)
  (websession-variable (websession-from-req req) "tutorialphase")
  )


;;;change tutorial to tutorial2 page
(defun to-tutorial2 (req ent)
  (setf (websession-variable (websession-from-req req) "tutorialphase")
    "tutorial-phase2.clp")

  (websession-variable (websession-from-req req) "tutorialphase")

  )


;;;change tutorial to tutorial 3 page
(defun to-tutorial3 (req ent)
  (setf (websession-variable (websession-from-req req) "tutorialphase")
    "tutorial-phase3.clp")

  (websession-variable (websession-from-req req) "tutorialphase")

  
  )


;;;what items are in your inventory
(def-clp-function available_items (req ent args body)
  (declare (ignore ent args body))
  (let ((inventory (websession-variable
                    (websession-from-req req) "inventory")))
    (html
     (:princ-safe
      (format nil "~{~A ~}" inventory)
      )
     )
    )
  )


;;;add things
(defun add-poison (req ent)
  (declare (ignore ent))
  (push "POISON" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-milli (req ent)
  (declare (ignore ent))
  (push "MILLIPEDE" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-money (req ent)
  (declare (ignore ent))
  (push "DOLLAR" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-letter (req ent)
  (declare (ignore ent))
  (push "LETTER" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-art1 (req ent)
  (declare (ignore ent))
  (push "ARTONE" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-art2 (req ent)
  (declare (ignore ent))
  (push "ARTTWO" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-art3 (req ent)
  (declare (ignore ent))
  (push "ARTTHREE" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )


(defun add-art4 (req ent)
  (declare (ignore ent))
  (push "ARTFOUR" (websession-variable (websession-from-req req) "inventory"))
  :continue
  )
