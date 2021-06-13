LIST  = Statistics
LIST += Data_Visualization
LIST += Knitr
LIST += Data_Summarization
LIST += RStudio
LIST += Manipulating_Data_in_R
LIST += Data_Cleaning
LIST += Data_IO
LIST += Data_Classes
LIST += Simple_Knitr
LIST += Basic_R
 LIST += Functions
LIST += Knitr
LIST += Arrays_Split
LIST += Subsetting_Data_in_R
LIST += Intro
LIST += Data_Classes_summary

all:
	zip -q -r shiny_knitr.zip shiny_knitr/
	for fol in $(LIST) ; do \
		pwd && echo $$fol && cp makefile.copy $$fol/makefile && cd $$fol && make all && cd ../; \
	done
	for fol in $(LIST) ; do \
		pwd && echo $$fol && cd $$fol && cp index.pdf $$fol.pdf && cp index.html $$fol.html && cp index.R $$fol.R && cd ../; \
	done	
	echo "Running main index";
	Rscript -e "rmarkdown::render('index.Rmd')"
	# echo "Running Starting"
	# Rscript -e "rmarkdown::render('starting_with_r.Rmd')"		

labs: 
	Rscript run_labs.R	

# https://superuser.com/questions/592974/how-to-print-to-save-as-pdf-from-a-command-line-with-chrome-or-chromium

index.html: index.Rmd 
	Rscript -e "rmarkdown::render('index.Rmd')"

syllabus.html: syllabus.Rmd 
	Rscript -e "rmarkdown::render('syllabus.Rmd', output_format = 'html_document')"

syllabus.docx: syllabus.docx
	Rscript -e "rmarkdown::render('syllabus.Rmd', output_format = 'word_document')"

starting_with_r.html: starting_with_r.Rmd 
	Rscript -e "rmarkdown::render('starting_with_r.Rmd')"	

homework: HW/homework*.Rmd 
	cd HW/ && Rscript -e "rmarkdown::render('homework2.Rmd')";
	cd HW/ && Rscript -e "rmarkdown::render('homework3.Rmd')";
	cd HW/ && Rscript -e "rmarkdown::render('homework3_key.Rmd')";
	cd HW/ && Rscript -e "rmarkdown::render('homework2_key.Rmd')";

clean: 
	rm index.html
