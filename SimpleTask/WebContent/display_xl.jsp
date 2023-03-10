<!DOCTYPE html>
<html>
<head>
<script>
    // (A) RUN THIS ON PAGE LOAD
    window.addEventListener("load", () => {
        // the json data.
    	var jsAtt = '<%= request.getSession().getAttribute("json") %>';    	    
    	    const myBooks = JSON.parse(jsAtt);
    	/*     var a = document.getElementById('testValue').innerHTML;
    	    
    	    a = a.replace(/'/g, '"');
    	    a = JSON.parse(a);  */
    	    // Extract value from table header. 
    	    // ('Book ID', 'Book Name', 'Category' and 'Price')
    	    let col = [];
    	    for (let i = 0; i < myBooks.length; i++) {
    	      for (let key in myBooks[i]) {
    	        if (col.indexOf(key) === -1) {
    	          col.push(key);
    	        }
    	      }
    	    }

    	    // Create table.
    	    const table = document.createElement("table");

    	    // Create table header row using the extracted headers above.
    	    let tr = table.insertRow(-1);                   // table row.

    	    for (let i = 0; i < col.length; i++) {
    	      let th = document.createElement("th");      // table header.
    	      th.innerHTML = col[i];
    	      tr.appendChild(th);
    	    }

    	    // add json data to the table as rows.
    	    for (let i = 0; i < myBooks.length; i++) {

    	      tr = table.insertRow(-1);

    	      for (let j = 0; j < col.length; j++) {
    	        let tabCell = tr.insertCell(-1);
    	        tabCell.innerHTML = myBooks[i][col[j]];
    	      }
    	    }

    	    // Now, add the newly created table with json data, to a container.
    	    const divShowData = document.getElementById('showData');
    	    divShowData.innerHTML = "";
    	    divShowData.appendChild(table);
    });
 </script>
<!-- <style>
table, th, td {
	border: solid 1px #ddd;
	border-collapse: collapse;
	padding: 2px 3px;
	text-align: center;
}

th {
	font-weight: bold;
}
</style> -->
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #084cdf;
  color: white;
}
</style>
</head>
<body>
	<p id="showData"></p>
</body>



</html>