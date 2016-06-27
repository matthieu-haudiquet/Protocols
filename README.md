# Protocol notebook

This project contains various lab protocols written in [Rmarkdown](http://rmarkdown.rstudio.com), which can be rendered to HTML, PDF, and Word format. Correctness of protocols is not guaranteed. If you find an issue or want to suggest an improvement, please [submit an issue](https://github.com/EricEdwardBryant/Protocols/issues).

# Rendering protocols

Individual protocols can be rendered using the [rmarkdown](http://rmarkdown.rstudio.com) package (see [Requirements](#Requirements)).

```r
rmarkdown::render('path/to/protocol.Rmd', output_format = c('html_document', 'pdf_document', 'word_document'))
```

This project also has a [Makefile](https://en.wikipedia.org/wiki/Make_(software)) to make it easy to render all Rmarkdown files to all available formats.

Open the project in Rstudio by opening `Protocols.Rproj`, and press the `Build All` button shown in the image below.

![](figures/build-all-button.png)

Alternatively, you can use `make` from the terminal.

```shell
# Navigate to the Protocols project
cd path/to/Protocols

# Render to HTML, PDF, and WORD
make

# Or, render to a specific format
make word
make pdf
make html
```

# Requirements

- [R](https://cloud.r-project.org)
- [rmarkdown](http://rmarkdown.rstudio.com) (For Rmarkdown rendering - `install.packages('rmarkdown')`)
- [LaTeX](https://latex-project.org/ftp.html) (For rendering to PDF)
- [Rstudio](https://www.rstudio.com/products/rstudio/download/)
- [make](https://en.wikipedia.org/wiki/Make_(software))
    - **Mac:** included with command line tools (`xcode-select  --install`)
    - **Windows:** included with [Rtools](https://cran.r-project.org/bin/windows/Rtools/)
    - **Linux:** included in the build-essential package (`sudo apt-get install build-essential`)
