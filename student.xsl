<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="College">
        <html lang="en">

        <head>
            <title>Student Management System</title>
            <style>
                body {
                    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                }

                h1 {
                    margin-top: 2em;
                    text-align: center;
                    text-decoration: underline;
                }

                .table {
                    display: flex;
                    justify-content: center;
                    margin-top: 4em;
                }

                table, tr, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                }

                td, th {
                    padding: 1.3em;
                    text-align: center;
                }
            </style>
        </head>

        <body>
            <h1>Student Management System</h1>
            <div class="table">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>COURSE</th>
                        <th>SEMESTER</th>
                        <th>SUB1</th>
                        <th>SUB2</th>
                        <th>SUB3</th>
                        <th>TOTAL</th>
                        <th>AVG</th>
                        <th>GRADE</th>
                    </tr>
                    <xsl:for-each select="Student">
                        <tr>
                            <td>
                                <xsl:value-of select="id"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-name"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Course"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Sem"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Sub1"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Sub2"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Sub3"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Total"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Stu-Avg"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="Stu-Avg>=90">Excellent</xsl:when>
                                    <xsl:when test="Stu-Avg>=80">Distinction</xsl:when>
                                    <xsl:when test="Stu-Avg>=70">First Class with Distinction</xsl:when>
                                    <xsl:otherwise>First Class</xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>