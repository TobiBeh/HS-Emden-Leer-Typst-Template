#import "template.typ": create_document

#let thesis(
  // Document basics
  title: none,
  authors: (),
  matriculation-numbers: (),
  date: none,
  documentType: none,
  
  // University information
  faculty: none,
  module: none,
  course-of-studies: none,
  
  // Supervision details
  supervisor1: none,
  supervisor2: none,
  supervisor3: none,
  
  // Company information
  company: none,
  company-supervisor: none,
  
  // Content metadata
  abstract: none,
  keywords: (),
  
  // Document settings
  include-declaration: true,
  lang: "en",
  
  // Typography settings (with sensible defaults)
  font: "New Computer Modern",
  font-size: 11pt,
  line-spacing: 1.5,

  // Code highlighting
  enable-code-highlighting: true,
  
  // Layout settings
  lower-chapter-headings: false,
  
  body
) = {
  // Handle case where a single string is passed instead of array
  let authors_array = if type(authors) == str { (authors,) } else { authors }
  let matriculation_numbers_array = if type(matriculation-numbers) == str { (matriculation-numbers,) } else { matriculation-numbers }
  let keywords_array = if type(keywords) == str { (keywords,) } else { keywords }
  
  create_document(
    title: title,
    authors: authors_array,
    matriculation-numbers: matriculation_numbers_array,
    date: date,
    documentType: documentType,
    faculty: faculty,
    module: module,
    course-of-studies: course_of_studies,
    supervisor1: supervisor1,
    supervisor2: supervisor2,
    supervisor3: supervisor3,
    company: company,
    company-supervisor: company_supervisor,
    abstract: abstract,
    keywords: keywords_array,
    include-declaration: include_declaration,
    lang: lang,
    font: font,
    font-size: font_size,
    line-spacing: line_spacing,
    enable-code-highlighting: enable_code_highlighting,
    lower-chapter-headings: lower_chapter_headings,
    body
  )
}