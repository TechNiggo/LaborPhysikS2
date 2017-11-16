%==============================================%
%==================NeueKlasse==================%
%Autor: 		Nico Herkner
%Erstelldatum:	06-11-2017
%Version:		0.1
%Historie
%		0.1		2017-11-06	NH
%			NH	added: Klassenheader
%			NH	added: Standartwerte (labor, versuch, versuchtitel, betreuer, datum, author, title)
%			NH	added: Packages (inputenc, babel, fontenc, ams[3], graphics)
%			NH	added: einrücken verhindern
%			NH	added: Seitenränder
%			NH	added: Kopf- und Fusszeile
%			NH	added: Standartwert (headerimage)

%==============================================%
%============Benötigte Definitionen============%
%		\date			Erstelldatum
%		\author			Autoren
%		\labor			Laborname
%		\versuch		Versuch
%		\versuchtitel	Versuchtitel
%		\betreuer		Bertreuer
% 		\titleimagepath	rel. Pfad zum Kopfzeilenbild

%Klassenheader
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MeineLaTeXKlasse}[2017/11/06 Meine eigene LaTeX-Klasse]
\LoadClass[11pt, a4paper]{article}

%Packages
\RequirePackage[utf8]{inputenc} %Zeichencodierung
\RequirePackage[german]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}

%Definitionen Standartwerte
\newcommand{\labor}{Laborname} 	%Laborname
\newcommand{\versuch}{??} 		%Versuchnummer
\newcommand{\versuchtitel}{??} 	%Versuchtitel
\newcommand{\betreuer}{??} 		%Versuchtitel
\newcommand{\datum}{\today} 	%Datum
\newcommand{\headerimage}{\includegraphics[height=30pt]{img/ostfalia.png}} 	%headerimage
\author{Marius Neumann \and \&  \and Nico Herkner}
\title{Labor \labor ~- Versuch \versuch \\[1ex] \versuchtitel}
\date{\datum}
%Neue Titelseite
%\renewcommand{\maketitle}{
%	Hallo
%}

%einrücken verhindern
\setlength{\parindent}{0em} 

%Seitenränder
\RequirePackage[]{geometry}
\geometry{a4paper, includeheadfoot, bindingoffset=10mm, top=17mm, left=17mm, right=17mm, bottom=17mm, headheight=48pt, headsep=6mm}

%Kopf- und Fusszeile
\RequirePackage{fancyhdr}
	%\fancypagestyle{plain}{}
	\pagestyle{fancy} %eigener Seitenstil
	\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
	%Kopfzeile
	\fancyhead[L]{Nico Herkner, 70452700\\Marius Neumann, 70453277\\D1, \datum} %Kopfzeile links
	\fancyhead[C]{\betreuer \\ Labor \labor ~- Versuch \versuch\\\leftmark} %zentrierte Kopfzeile
	\renewcommand{\sectionmark}[1]{\markboth{#1}{}} %Section-name ohne Nummerierung
	\fancyhead[R]{\headerimage\\\begin{footnotesize}	Fakultät: Elektrotechnik\end{footnotesize}}
	\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie 
	%Fusszeile
	\fancyfoot[R]{Seite \thepage ~von \pageref{letzteSeite}} %Seitennummer
	\renewcommand{\footrulewidth}{0.4pt} %untere Trennlinie
	%große und abstände der Kopfzeile
	%\setlength{\headheight}{48pt}
	%\setlength{\headsep}{6mm}
	%Pagestyle für Titelseite
	\fancypagestyle{titelseite}{%
		\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
		\renewcommand{\headrulewidth}{0pt} %obere Trennlinie
		\renewcommand{\footrulewidth}{0pt} %untere Trennliniee
		\fancyhead[R]{\includegraphics[height=30pt]{img/ostfalia.png}\\\begin{footnotesize}	Fakultät: Elektrotechnik\end{footnotesize}} %Kopfzeile
		\setlength{\headsep}{0mm}
		\setlength{\footskip}{0mm}
	}
	\fancypagestyle{messprotokoll}{
		\fancyfoot[R]{} %Seitennummer
		\renewcommand{\footrulewidth}{0pt} %untere Trennliniee
	}