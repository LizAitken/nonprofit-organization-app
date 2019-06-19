const Students = require('../models/m_student');
const Family = require('../models/m_family');
const Supplies = require('../models/m_supplies');
const Grades = require('../models/m_grade');
const Sponsors = require('../models/m_sponsor');

exports.getAllStudents = async (req, res) => {
    const arrOfStudents = await Students.getAllStudents();
    console.log("This is array of studentssss :    ", arrOfStudents);

    res.render('template', {
        locals: {
            title: 'Students List',
            userName: req.session.first_name,
            is_logged_in: req.session.is_logged_in,
            studentList: arrOfStudents
        },
        partials: {
            partial: 'partial-studentsList',
            nav: 'partial-nav',
        }
    });
};

exports.getOneStudent = async (req, res) => {
    const student_id = req.params.student;
    const arrOfStudents = await Students.getOneStudent(student_id);
    const familyInfo = await Family.getOneFamily(student_id);
    const allSupplies = await Supplies.getAllItemsByStudentID(student_id);
    const gradeInfo = await Grades.getOneGrade(student_id);
    const sponsorInfo = await Sponsors.getSponsorById(student_id);
    const schoolInfo = await Grades.getSchoolonStudentId(student_id);
    console.log(gradeInfo);

    res.render('template', {
        locals: {
            title: 'Student Profile',
            userName: req.session.first_name,
            is_logged_in: req.session.is_logged_in,
            studentList: arrOfStudents,
            familyName: familyInfo,
            gradeLevel: gradeInfo,
            suppliesList: allSupplies,
            sponsorName: sponsorInfo,
            schoolName: schoolInfo
        },
        partials: {
            partial: 'partial-studentsProfile',
            nav: 'partial-nav'
        }
    });
};

/* GET handler for add student page */
exports.addStudent_get = (req, res) => {
    res.render('template', {
        locals: {
            title: 'Add Student',
            is_logged_in: req.session.is_logged_in,
            first_name: req.session.first_name,
            userName: req.session.first_name
        },
        partials: {
            partial: 'partial-add-student',
            nav: 'partial-nav'
        }
    });
};

/* POST handler for add student page */
exports.addStudent_post = async (req, res) => {
    const { first_name, last_name, age, sponsorship, money, student_photo } = req.body;

    // to avoid insert issue resulting from external database seeding, get
    // max id of students table, then use max+1 for id
    const maxId = await Students.getMaxId();
    // likewise for the link_id from the links table
    const maxLinkId = await Students.getMaxLinkId();

    // now, instantiate student with said id+1
    const student = new Students(maxId.max+1, first_name, last_name, age, sponsorship,
                                money, null);

    student.addStudent(maxLinkId.max).then(() => {
        res.redirect('/students');
    });
};

/* GET handler for delete student page */
exports.deleteStudent_get = (req, res) => {
    res.render('template', {
        locals: {
            title: 'Delete Student',
            is_logged_in: req.session.is_logged_in,
            first_name: req.session.first_name,
            userName: req.session.first_name
        },
        partials: {
            partial: 'partial-delete-student',
            nav: 'partial-nav'
        }
    })
}

/* POST handler for delete student page */
exports.deleteStudent_post = async (req, res) => {
    const { first_name, last_name } = req.body;

    const sponsor = new Students(null, first_name, last_name, null,
                            null, null, null, null, null, null);

    sponsor.deleteStudent().then(() => {
        res.redirect('/students');
    });
};

/* GET handler for adding supplies to a student */
exports.addSupply_get = async (req, res) => {
    const id = req.params.id;
    
    const student = await Students.getOneStudent(id);
    const name = student.first_name + " " + student.last_name;

    res.render('template', {
        locals: {
            title: `Give Supplies to ${name}`,
            is_logged_in: req.session.is_logged_in,
            first_name: req.session.first_name,
            userName: req.session.first_name,
            id: id
        },
        partials: {
            partial: 'partial-add-supply',
            nav: 'partial-nav'
        }
    });
}

/* POST handler for adding supplies to a student */
exports.addSupply_post = async (req, res) => {
    const body = req.body;
    const params = req.params;
    
    const supply_name = body.supply_name,
          price = body.unit_cost,
          quantity = body.quantity,
          id = params.id;

    Students.addSupplyToStudentById(id, supply_name, price, quantity)
    .then(() => {
        res.redirect(`/students/${id}`);
    });
}

/* GET handler for removing supplies from a student */
exports.removeSupply_get = async (req, res) => {
    const id = req.params.id;
    
    const student = await Students.getOneStudent(id);
    const name = student.first_name + " " + student.last_name;

    res.render('template', {
        locals: {
            title: `Remove Supplies from ${name}`,
            is_logged_in: req.session.is_logged_in,
            first_name: req.session.first_name,
            userName: req.session.first_name,
            id: id
        },
        partials: {
            partial: 'partial-delete-supply',
            nav: 'partial-nav'
        }
    });
}

/* POST handler for removing supplies from a student */
exports.removeSupply_post = async (req, res) => {
    const body = req.body;
    const params = req.params;
    
    const supply_name = body.supply_name,
          id = params.id;

    console.log("supply_name:", supply_name);
    console.log("student_id:", id);

    Students.removeSupplyByStudentId(id, supply_name)
    .then(() => {
        res.redirect(`/students/${id}`);
    });
}