
;;;Tutorial
;;;needs to show profile to get next option
(setf *profiles* '(detective-hughman curraine-profile))

;;;completes the sequence 
(setf *objects* '(gum-wrapper badge))

;;;build off these later
(defparameter *map* '((tutorial (You go over to the dead body. A man blocks your way))))


(defparameter *object-locations* '((gum-wrapper tutorial)
                                   (badge tutorial)))

(defparameter *profile-locations* '((detective-hughman tutorial)
                                    (curraine-profile tutorial)))

(defparameter *location* 'tutorial)


;;;add to your accessible profiles
(defun add-to-profiles (object)
  (push (list object 'profile-body) *profile-locations*))

;;;add to accessible inventory
(defun add-to-inventory (object)
  (push (list object 'inventory-body) *object-locations*))

(defmacro defspel (&rest rest) `(defmacro ,@rest))

(defspel add-profile (object)
  `(add-to-profiles ',object))

(defspel add-item (object)
  `(add-to-inventory ',object))

;;;mainly usede for showing items profiles on you
(defun is-at (obj loc obj-loc)
  (eq (second (assoc obj obj-loc)) loc))

;;;displays profiles obtained
(defun collected-profiles ()
  (remove-if-not (lambda (x)
                   (is-at x 'profile-body *profile-locations*)) 
                 *profiles*)
  )

(defun show-profiles ()
  (princ "Which profile would you like to select?")
  (loop for prof in (collected-profiles)
        do (print prof))
  
  )

;;;shows inventory
(defun inventory ()
  (remove-if-not (lambda (x)
                   (is-at x 'inventory-body *object-locations*))
                 *objects*)
  )

;;;presents item
(defun present-item ()
  (princ "Which item would you like to present?")
  (loop for item in (inventory)
        do (print item))
  )

;;;have you completed tutorial
(defparameter *completed-tutorial* nil)

;;;initializes the tutorial. 
(defun start-tutorial () 
  
  ;;;Curraine name 
  (setf *curraine-name* `(????))
  
  ;;;have you spoken to mr.curraine yet?
  (defparameter *spoken-to* nil)
  
  ;;;have you shown Mr.Curraine your profile?
  (defparameter *shown-profile* nil)
  
  ;;;starter dialogue 
  (setf *current-dialogue* `(Hey! What do you think you're doing?))
  
  ;;;Dialgue at the end of either talking choices
  (setf *curraine-refusal* `(I can't let you do that. We are waiting for
                         the police to arrive.))
  
  (setf *curraine-introduction* `(I am the Curator of this gallary Allan Curraine. Now please step away from the body))
  
  ;;;you show curraine his own profile
  (setf *curraine-affirmation* `(Yes which is why it is my duty to make sure the
                            crime scene is not contaminated until the police arrive.))
  
  ;;;you show curraine your profile
  (setf *curraine-doubt* `(Do you think I am stupid enough to just believe
                       you are a Detective because you told me you're one?))
  
  ;;;show curraine your badge
  (setf *curraine-agreement* `(You're a detective?! Why didn't you say so? Anything in this
                              gallary is at your disposal!))
  
  ;;;go back option.
  ;;;available in talk, show profile, and present item
  (setf *go-back* `(Back to options))
  
    ;;;show options
  (defun chat-options ()
    (print "talk")
    (if (not (null *spoken-to*))
        (print "show-profile"))
    (if (not (null *shown-profile*))
        (print "present-item"))
    (if (not (null *shown-badge*))
        (print "exit-conversation"))
    )
  
  ;;;dialogue options for tutorial
  (setf *option1* `(I want to examine the body.))
  (setf *option2* `(Move. I need to examine the body.))
  (setf *option3* `(Who are you?))
  
  ;;;presents options
  ;;;in the web interface the options are clickable
  (defun talk ()
    (princ "Option 1: ")
    (princ *option1*)
    
    (print "Option 2: ")
    (princ *option2*)
    
    (print "Option 3: ")
    (princ *option3*)
    
    (print *go-back*)
    
    (terpri)
    (setf dialogue-choice (read))
    
    (cond ((string-equal dialogue-choice "option1") (talk-response1 *option1*))
          ((string-equal dialogue-choice "option2") (talk-response1 *option2*))
          ((string-equal dialogue-choice "option3") (talk-response2))
          (t `(Okay.)))
    
    (run-tutorial)
    
    )
  
  (defun talk-response1 (option)
    (princ "Detective Hughman: ")
    (princ option)
    (terpri)
    (princ *curraine-name*)
    (princ ": ")
    (princ *curraine-refusal*)
    (setf *current-dialogue* *curraine-refusal*)
    
    (terpri)
    (princ "Detective Hughman: I guess asking to see the body is not enough.")
    )
  
  
  (defun talk-response2 ()
    (princ "Detective Hughman: ")
    (princ *option3*)
    (setf *curraine-name* `(Mr.Curraine))
    (terpri)
    (princ *curraine-name*)
    (princ ": ")
    (princ *curraine-introduction*)
    (setf *current-dialogue* *curraine-introduction*)
    
    (if (null *spoken-to*)
        (progn
          (setf *spoken-to* t)
          
          (add-profile detective-hughman)
          (add-profile curraine-profile)
          
          (print "Mr. Curraine added to your profiles")
          (print "Dective Hughman: (Maybe if I show him a profile I can convince him to let me through.)")
         )
      (print "I should try showing Mr. Curraine one of my profiles to see if that convinces him to let me through.")
      )
    )
  
  ;;;when you choose to show profile
  (defun show-profiles-tutorial ()
    (show-profiles)
    (print "go back")
    (terpri)
    (setq profile-choice (read))
    (cond ((string-equal profile-choice "sebbie") (show-dh))
          ((string-equal profile-choice "mrcurraine") (show-curraine))
          (t '(Okay))
          )
    
    (run-tutorial)
    )
  
  
  
  (defun show-dh ()
    (princ "Detective Hughman: I am a detective, let me through.")
    (terpri)
    (princ *curraine-name*)
    (princ ": ")
    (princ *curraine-doubt*)
    (setf *current-dialogue* *curraine-doubt*)
    (terpri)
    (princ "Detective Hughman: I should show him my badge!")
    
    (add-item gum-wrapper)
    (add-item badge)
    (setf *shown-profile* t)
    
    (print "You can now access your inventory")
    )
  
  (defun show-curraine ()
    (princ "Detective Hughman: So you are the Currator here?")
    (terpri)
    (princ "Mr. Curraine: ")
    (princ *curraine-affirmation*)
        (setf *current-dialogue* *curraine-affirmation*)
    (terpri)
    (princ "Detective Hughman: (Drats. If only I could convince him that I am a detective.)")

    )
  
  
  
  ;;;when you choose to present an item
  (defun present-item-tutorial ()
    (present-item)
    (print "go back")
    (terpri)
    
    (setq item-choice (read))
    (cond ((string-equal item-choice "gum-wrapper") (give-wrapper))
          ((string-equal item-choice "badge") (present-badge))
          (t `(Okay.)))
    
    (run-tutorial)
    )
  
  
  ;;;give gum-wrapper
  (defun give-wrapper ()
    (princ "Detective Hughman: Check this out!")
    (terpri)
    (princ "Mr. Curraine: A gum wrapper? Is this supposed to convince me?")
    (terpri)
    (princ "Detective Hughman: (He didnt even read the joke on the back! This guy is tough.")
    (terpri)

    )
  
  
  ;;;display your badge
  (defun present-badge ()
    (princ "Detective Hughman: I have a badge!")
    (terpri)
    (princ "Mr. Curraine: ")
    (princ *curraine-agreement*)
    (setf *current-dialogue* *curraine-agreement*)
    (setf *completed-tutorial* t)
    (terpri)
    (princ "Detective Hughman: (Pretty sure I did say that...)")
    (terpri)
    )
  
     ;;;prints Curraine's last sentance and player options
  (defun run-tutorial()
    (print *current-dialogue*)
    (chat-options)
    (terpri)
    (setq choice (read))
    (cond ((string-equal choice "talk") (talk))
          ((string-equal choice "show-profile") (show-profiles-tutorial))
          ((string-equal choice "present-item") (present-item-tutorial))
          (t `(I mean this will be improssible to choose later)))
    )
  
  )


    
    
    
    
    
    