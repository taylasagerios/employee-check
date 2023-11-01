
const inquirer = require('inquier');

inquirer
    .prompt([
        {
            type: "input",
            name: "department",
            message: "Which department would you like to add?"
        }
    ])
    .prompt2([
        {
            type: "input",
            name: "role",
            message: "What role would you like to add?"
           
        },
        {
            type: "input",
            name: "department",
            message: "Which department are they apart of?"
        },
        {
            type: "input",
            name: "salary",
            message: "What is the salary for this role?"
        },
    ])
    .prompt3([
        {
            type: "input",
            name: "first-name",
            message: "What is the meployee's first name?"
        },
        {
            type: "input",
            name: "last-name",
            message: "What is the meployee's last name?"
        },
        {
            type: "input",
            name: "role",
            message: "What is the meployee's role?"
        },
        {
            type: "input",
            name: "manager",
            message: "Who is their manager?"
        }
    ])
    .prompt4([
        {
            type: "list",
            name: "update",
            message: "Which employee do you need to update?",
            choices:""
        }
    ])

    .then((responses)=> {
        var listText = genList(responses)
        fs.writeFile('', listText, (err) =>
        err? console.error(err) : console.log('Success!')
        );
    })

    function genList(answers){
        console.log(answers)
        var listTxt = ""
        listTxt += `#Department
        ${answers.depaertment}

        `
        return listTxt
    }
