# How to update the reports

1. Go to reports/versions folder and create a new subfolder with the date as yyyyQq, e.g. 2020q1. 
   From here on out we will use the variable {version}.
2. Then move the rmd files in this folder and render the .rmd file to .html and name it report.html
3. Create a new .html file in reports folder (copy the template from an existing one) with the name of the report, e.g. 2020q1.html
4. Then change the following part to the location of the new report/
```html
<div class=" container-fluid">
    <iframe src="versions/{version}}/report.html" style="..."></iframe>
  </div>
  Also adjust the height if needed - min-height: 280vh;
```
5.Add a new column in the `report.html` file in the root folder with the following code:
```html
<div class="col-md-4 mb-4">
    <div class="card shadow-lg d-flex flex-column">
        <div class="card-body" >
            <h5 class="card-title">TITLE</h5>
            <h6 class="card-text" style="min-height: 40px;">BOLD TEXT</h6>
            <p style="min-height: 80px;">OTHER TEXT CHUNK</p>
            <a href="/reports/{version}.html" class="btn btn-secondary hvr-pulse-grow" style="color:white !important;">View</a>
        </div>
    </div>

</div>
```
6. Fill in with the title, text, and p at the `report.html`.
7. Add the new report to the `index.html` file in the root folder with the following code:
```html
<div class="container">
    <h2>  TITLE </h2>

    <h4 style="color:grey;"> {version} IHO Global Housing Outlook</h3>

        <br>
        <b>BOLD TEXT CHUNK</b>  
        OTHER TEXT CHUNK
        <div style="padding: 2rem 0 2rem 0;">
            <a class="btn btn-secondary hvr-pulse-grow" style="float: right;color:white !important;"href="reports/2024q1.html">
                Read More
            </a>
        </div>
</div>
```
8. Fill in with the title, text, and p at the `index.html`.
9. Push the changes to github.