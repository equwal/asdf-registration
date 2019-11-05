(in-package #:asdf-registration)
(defun add-repo (path)
  "Add a folder which contains ASDF systems. The subdirectories will be added to
the ASDF registry."
  (mapc #'add-to-registry
        (remove-if-not #'uiop:directory-exists-p
                       (uiop:subdirectories path))))

(defun add-to-registry (dir)
  (pushnew dir asdf:*central-registry* :test #'uiop:pathname-equal))
