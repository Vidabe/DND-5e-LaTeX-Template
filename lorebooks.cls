\RequirePackage {expl3}
\ProvidesExplClass {lorebooks} {2020/04/21} {alpha} { Vorlage fuer Buchauschnitte }



\LoadClass {scrartcl}

\RequirePackage{graphicx}
\RequirePackage{xparse}

\RequirePackage[T1]{fontenc}
\RequirePackage{bookman}
\RequirePackage[type1]{gillius2}
\RequirePackage[notext,nomath,nott]{kpfonts}
\RequirePackage{aurical}
\renewcommand{\sfdefault}{jkpss}




\RequirePackage{scrlayer-scrpage}


\DeclareLayer
  [  
    , page 
    , background
    , contents={\includegraphics[width=\paperwidth,height=\paperheight]{img/paper}}
    ]{Background}


\AddLayersToPageStyle{empty}{Background}

\pagestyle{empty}






\NewDocumentCommand \signature { m }
  {
    \begin{flushright}
      \Large\Fontauri\slshape #1 
    \hspace*{4em}
    \end{flushright}
  }

\tl_new:N \l__lorebook_title_bookpart_tl
\tl_new:N \l__lorebook_title_author_tl
\tl_new:N \l__lorebook_title_title_tl
\NewDocumentCommand \bookpart { m }
  {
    \tl_set:Nn \l__lorebook_title_bookpart_tl {#1}
  }
\NewDocumentCommand \fromauthor { m }
  {
    \tl_set:Nn \l__lorebook_title_author_tl {#1}
  }
\NewDocumentCommand \fromtitle { m }
  {
    \tl_set:Nn \l__lorebook_title_title_tl {#1}
  }
  

\RenewDocumentCommand \maketitle { }
  {
    \begin{center}
      \sffamily
      { \Large\bfseries\ \l__lorebook_title_bookpart_tl \par}
      
      \bigskip
      
      \large
      \l__lorebook_title_title_tl \par
      
      \emph{von ~ \l__lorebook_title_author_tl}
      
    \end{center}
    
    \bigskip
    
  }  

