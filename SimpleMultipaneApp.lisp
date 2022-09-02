(defpackage #:simple-multipane-app
  (:use #:clim #:clim-lisp)
  (:export #:run-app))

(in-package #:simple-multipane-app)

(define-application-frame simple-multipane-app ()
  ((current-number :initform 1
		   :accessor current-number))
  (:pointer-documentation t)
  (:panes
   (app :application
	:height 400
	:width 600
	:display-function 'display-app)
   (int :interactor
	:height 200
	:width 600))
  (:layouts
   (default (vertically ()
	      int app))))

(defun display-app (frame pane)
  (let ((number (current-number frame)))
    (format pane "~a is ~a"
	    number
	    (cond ((null number) "not a number")
		  ((oddp number) "odd")
		  (t "even")))))

(defun run-app ()
  (run-frame-top-level (make-application-frame 'simple-multipane-app)))
