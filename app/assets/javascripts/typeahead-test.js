$(document).ready(function() {
  $('.example-countries .typeahead').typeahead({
    name: 'countries',
    local: ['Professional Development', 'Workshop', 'Pre-K', 'K-5', 'K-8', 'K-12', 'Higher Education', 'Math', 'English Language Arts', 'Applied Technology', 'Music', 'Physical Education', 'Health / Wellness', 'Technology Integration', 'Technology Coaching', 'iPad', 'Mobile Computing', 'Digital Literacy', 'Library', 'Google Apps for Education', 'Reading Strategies', 'Special Education', 'Assistive Technology', 'Library Science', 'Speech Therapy', 'World Language', 'Art', 'Executive Functioning', 'Algebra', 'Pre-Calculus', 'Chemistry', 'Earth Science', 'Biology', 'Geology', 'Outdoor Education', 'Common Core', 'NETS Standards', 'Differentiation', 'Formative Assessment', 'Summative Assessment', 'Classroom Management', 'Cognitive Thinking Strategies', 'Social Studies', 'School Psychology', 'Administrative Leadership', 'Educational Leadership', 'Assessment and Data'],
    minlength: 2,
    limit: 10
  });
});