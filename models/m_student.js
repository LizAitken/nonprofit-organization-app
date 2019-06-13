const db = require('./conn.js');

class Students {
    constructor(student_id, first_name, last_name, age, sponsorship, grades_id , money, families_id, sponsors_id){
        this.student_id = student_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.age = age;
        this.sponsorship = sponsorship;
        this.grades_id = grades_id;
        this.money = money;
        this.families_id = families_id;
        this.sponsors_id = sponsors_id;
    }

    static async getAllStudents() {
        try {
            const response = await db.any(`select * from students`);
            return response;
        } catch(err) {
            return err.message;
        }
    }

    static async addStudent(first_name, last_name, age, sponsorship, money) {
        const query = `INSERT INTO students (first_name, last_name, age, sponsorship, money) VALUES ('${first_name}', '${last_name}', '${age}', '${sponsorship}', '${money}')`;

        try {
            let response = await db.result(query);
            return response;
        } catch(err) {
            console.log("ERROR", err.message);
            return err;
        };
    }

    static async getOneStudent(student_id) {
        try {
            const response = await db.one(`SELECT student_id, first_name, last_name, age, sponsorship, money FROM students WHERE students.student_id = '${student_id}'`);
            return response;
        } catch(err) {
            return err.message;
        }
    }

}

module.exports = Students;