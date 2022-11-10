// from data.js
const tableData = data;

// get table references
var tbody = d3.select("tbody");

function buildTable(data) {
  // First, clear out any existing data
  tbody.html("");

  // Next, loop through each object in the data
  // and append a row and cells for each value in the row
  data.forEach((dataRow) => {
    // Append a row to the table body
    let row = tbody.append("tr");

    // Loop through each field in the dataRow and add
    // each value as a table cell (td)
    Object.values(dataRow).forEach((val) => {
      let cell = row.append("td");
      cell.text(val);
    });
  });
}

// 1. Create a variable to keep track of all the filters as an object.
var filters = {};

// 3. Use this function to update the filters. 
function updateFilters() {
  console.log("update_filters")
 
  // let date = d3.select("#datetime").property("value");
 // let city = d3.select("#city").property("value");
// let state = d3.select("#state").property("value");
//  let country = d3.select("#country").property("value");
  // let shape = d3.select("#shape").property("value");
    // 4a. Save the element that was changed as a variable.
    let changedElement = d3.select(this);

    // 4b. Save the value that was changed as a variable.
    let elementValue = changedElement.property("value");
    console.log(elementValue);
    // 4c. Save the id of the filter that was changed as a variable.
    let filteredId = changedElement.attr("id");
    console.log(filteredId);
  
    // 5. If a filter value was entered then add that filterId and value
    // to the filters list. Otherwise, clear that filter from the filters object.
    if (elementValue) {
      filters[filteredId] = elementValue;
    }
    else {
      delete filters[filteredId];
    }
  
    // 6. Call function to apply all filters and rebuild the table
    filterTable(filters);
  
  }
  
  // 7. Use this function to filter the table when data is entered.
  function filterTable() {
    console.log("filter_table")
    console.log(filters)
    // 8. Set the filtered data to the tableData.
    let filteredData = tableData;
  
    // 9. Loop through all of the filters and keep any data that
    // matches the filter values
    // if (date) {
      // filteredData = filteredData.filter(row => row.datetime === filters.date);
    // }

    if (filters.datetime) {
      filteredData = filteredData.filter(row => row.datetime === filters.datetime)
    }
    if (filters.country) {
      filteredData = filteredData.filter(row => row.country === filters.country)
    }
    if (filters.shape) {
      filteredData = filteredData.filter(row => row.shape === filters.shape)
    }
    if (filters.city) {
      filteredData = filteredData.filter(row => row.city === filters.city)
    }
    if (filters.state) {
    filteredData = filteredData.filter(row => row.state === filters.state)
    }


    // 10. Finally, rebuild the table using the filtered data
    buildTable(filteredData);
  }
  

  // Build the table when the page loads
  buildTable(tableData);
  // 2. Attach an event to listen for changes to each filter
  d3.selectAll("input").on("change", updateFilters);
