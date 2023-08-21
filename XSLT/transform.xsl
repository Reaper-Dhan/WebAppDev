<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Skill Assessment</title>
      </head>
      <body style="background-color: pink; padding: 40px;">
        <center><h1>Skill Assessment</h1></center>
        <hr></hr>
        <xsl:apply-templates select="skills/skill">
          <xsl:sort select="actual_level >= required_level" order="descending"/>
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="skill">
    <div>
      <h2><xsl:value-of select="name"/></h2>
      <p><strong>Category:  </strong> <xsl:value-of select="category"/></p>
      <p><strong>Required Level:  </strong> <xsl:value-of select="required_level"/></p>
      <p><strong>Actual Level:  </strong> <xsl:value-of select="actual_level"/></p>
      <p><strong>Description:  </strong> <xsl:value-of select="description"/></p>
      <xsl:choose>
        <xsl:when test="actual_level >= required_level">
          <p style="color:green;"><strong>Proficiency level meets or exceeds requirements.</strong></p>
        </xsl:when>
        <xsl:otherwise>
          <p style="color:red;"><strong>Proficiency level does not meet requirements.</strong></p>
        </xsl:otherwise>
      </xsl:choose>
    </div>
    <br></br>
  </xsl:template>
</xsl:stylesheet>
