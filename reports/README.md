# How to add a new report

1. Generate a new report using the .Rmd format and create an .html
2. Save it into reports/version/{version}/report.html
3. Create a new html file in reports/{version}/index.html and add the following code:

```html
<div class="container-fluid">
    <iframe src="versions/{version}/report.html" width="100%" height="100%" frameborder="0" style="height: 100vh; border: none; overflow: hidden; position: fixed;  top: 170px; z-index: 999999; padding-bottom: 170px;
  "></iframe>
```

4. Then go to reports.html and add a new card with the new report
5. Then go to index.html and copy+paste the teaset and change the href to the new report