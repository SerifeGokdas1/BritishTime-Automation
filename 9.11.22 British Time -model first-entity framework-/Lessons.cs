//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _9._11._22_British_Time__model_first_entity_framework_
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lessons
    {
        public int LessonNo { get; set; }
        public string Speech { get; set; }
        public string BusinessEnglish { get; set; }
        public string YDSCourse { get; set; }
        public string ToeflCourse { get; set; }
        public string IeltsCourse { get; set; }
        public int StudentsStudentNo { get; set; }
        public int TeachersTeacherNo { get; set; }
    
        public virtual Students Students { get; set; }
        public virtual Teachers Teachers { get; set; }
    }
}
