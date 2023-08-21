let $skills := 
<skills>
  <skill>
    <name>C</name>
    <category>Programming Languages</category>
    <required_level>4</required_level>
    <actual_level>3</actual_level>
    <description>Proficient in C programming for software development.</description>
  </skill>
  <skill>
    <name>C++</name>
    <category>Programming Languages</category>
    <required_level>4</required_level>
    <actual_level>2</actual_level>
    <description>Experienced in object-oriented programming using C++.</description>
  </skill>
  <skill>
    <name>Java</name>
    <category>Programming Languages</category>
    <required_level>5</required_level>
    <actual_level>2</actual_level>
    <description>Skilled in developing Java applications and software.</description>
  </skill>
  <skill>
    <name>Python</name>
    <category>Programming Languages</category>
    <required_level>4</required_level>
    <actual_level>5</actual_level>
    <description>Familiar with Python scripting and application development.</description>
  </skill>
  <skill>
    <name>SQL</name>
    <category>Database Management</category>
    <required_level>3</required_level>
    <actual_level>5</actual_level>
    <description>Proficient in querying and managing relational databases using SQL.</description>
  </skill>
  <skill>
    <name>HTML/CSS</name>
    <category>Web Development</category>
    <required_level>3</required_level>
    <actual_level>5</actual_level>
    <description>Skilled in creating and styling web pages using HTML and CSS.</description>
  </skill>
  <skill>
    <name>JavaScript</name>
    <category>Web Development</category>
    <required_level>3</required_level>
    <actual_level>4</actual_level>
    <description>Experienced in client-side scripting with JavaScript.</description>
  </skill>
  <skill>
    <name>Networking</name>
    <category>Networking</category>
    <required_level>3</required_level>
    <actual_level>3</actual_level>
    <description>Proficient in designing and troubleshooting computer networks.</description>
  </skill>
  <skill>
    <name>Cybersecurity</name>
    <category>Security</category>
    <required_level>2</required_level>
    <actual_level>4</actual_level>
    <description>Skilled in implementing security measures to protect systems and data.</description>
  </skill>
  <skill>
    <name>Machine Learning</name>
    <category>Artificial Intelligence</category>
    <required_level>2</required_level>
    <actual_level>3</actual_level>
    <description>Familiar with applying machine learning techniques for data analysis.</description>
  </skill>
  <skill>
    <name>AWS</name>
    <category>Cloud Computing</category>
    <required_level>3</required_level>
    <actual_level>1</actual_level>
    <description>Experienced in deploying and managing applications on AWS.</description>
  </skill>
  <skill>
    <name>Android App Development</name>
    <category>Mobile Development</category>
    <required_level>3</required_level>
    <actual_level>0</actual_level>
    <description>Skilled in creating Android applications using Java and Kotlin.</description>
  </skill>
  <skill>
    <name>Git</name>
    <category>Tools</category>
    <required_level>4</required_level>
    <actual_level>4</actual_level>
    <description>Proficient in version control using Git and GitHub.</description>
  </skill>
</skills>


return
<html>
  <head>
    <title>Skill Assessment</title>
  </head>
  <body>
    <h1>Skill Assessment</h1>
    {
      for $skill in $skills/skill
      let $meetsRequirement := $skill/actual_level >= $skill/required_level
      order by $meetsRequirement descending
      return
      <div>
        <h2>{$skill/name}</h2>
        <p><strong>Category:</strong> {$skill/category}</p>
        <p><strong>Required Level:</strong> {$skill/required_level}</p>
        <p><strong>Actual Level:</strong> {$skill/actual_level}</p>
        <p><strong>Description:</strong> {$skill/description}</p>
        {
          if ($meetsRequirement)
          then <p style="color:green;"><strong>Proficiency level meets or exceeds requirements.</strong></p>
          else <p style="color:red;"><strong>Proficiency level does not meet requirements.</strong></p>
        }
      </div>
    }
  </body>
</html>
