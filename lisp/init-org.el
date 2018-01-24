(with-eval-after-load 'org

  (setq org-agenda-files '("C:/Users/donal/Desktop/Donald Yang"))

  (setq org-src-fontify-natively t)

  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "C:/Users/donal/Desktop/Donald Yang/gtd.org" "Workspace")
	   "* TODO [#B] %?\n  %i\n"
	   :empty-lines 1)
	  ("n" "notes" entry (file+headline "C:/Users/donal/Desktop/Donald Yang/notes.org" "Quick notes")
	   "* %?\n  %i\n %U"
	   :empty-lines 1)
	  ("b" "Blog Ideas" entry (file+headline "C:/Users/donal/Desktop/Donald Yang/notes.org" "Blog Ideas")
	   "* TODO [#B] %?\n  %i\n %U"
	   :empty-lines 1)
	  ("s" "Code Snippet" entry (file "C:/Users/donal/Desktop/Donald Yang/snippet.org")
	   "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
	  ("w" "work" entry (file+headline "C:/Users/donal/Desktop/Donald Yang/gtd.org" "Project")
	   "* TODO [#A] %?\n  %i\n %U"
	   :empty-lines 1)
	  ("l" "links" entry (file+headline "C:/Users/donal/Desktop/Donald Yang/notes.org" "Quick notes")
	   "* TODO [#C] %?\n  %i\n %a \n %U"
	   :empty-lines 1)
	  ("j" "Journal Entry" entry (file+datetree "C:/Users/donal/Desktop/Donald Yang/journal.org")
	   "* %?"
	   :empty-lines 1)))
  )

(setq org-tag-alist '(("WORK" . ?w)
		      ("PROJECT" . ?p)
		      ("BLOG" . ?b)
		      ("HOME" . ?h)))

(setq org-agenda-custom-commands
            '(
              ("w" . "任务安排")
              ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
              ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
              ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
              ("b" "Blog" tags-todo "BLOG")
              ("p" . "项目安排")
              ("pg" tags-todo "PROJECT+WORK+CATEGORY=\"\"")
              ("pd" tags-todo "PROJECT+DREAM+CATEGORY=\"Donald\"")
              ("W" "Weekly Review"
               ((stuck "") ;; review stuck projects as designated by org-stuck-projects
                (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
                ))))

(setq org-todo-keywords
      '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
	))


(provide 'init-org)
