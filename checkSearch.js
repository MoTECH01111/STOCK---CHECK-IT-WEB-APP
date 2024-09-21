/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
//name of my function that is attached to my onclick button
function checkSearch() {
    const input = document.querySelector('input[type="text"]');
    const filter = input.value.toUpperCase();
    const table = document.querySelector('table');
    const rows = table.getElementsByTagName('tr');
    let codeExists = false;

    //This code loops through a table's rows, determines whether the product code in each row satisfies the filter and then modifies the display style as necessary.
    for (let i = 1; i < rows.length; i++) {
        const id = rows[i].cells[0];

        if (id) {
            const code = id.textContent || id.innerText;
            if (code.toUpperCase().indexOf(filter) > -1) {
                rows[i].style.display = '';
                codeExists = true;
            } else {
                rows[i].style.display = 'none';
            }
        }
    }

    // This the alert for if the item code is input wrong 
    if (!codeExists) {
        alert('CheckIt AGAIN oops item id was invalid');
    }
}

//it ensures that your JavaScript code runs at the correct time,
document.addEventListener('DOMContentLoaded', function () {
    const input = document.querySelector('input[type="text"]');
    input.addEventListener('input', checkSearch);
});



