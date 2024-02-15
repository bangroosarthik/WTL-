<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.1"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <style>
                table,th,td{
                    border: 1px solid white;
                }

                th{
                    height:50px;
                    padding: 15px;
                    text-align: center;
                }

                td{
                    text-align: center;
                    padding: 15px;
                    text-align: center;
                }

            </style>
        </head>
        <body style="background-color:black">
            <h1 style="text-align:center">Employee Database</h1>
            <table style=" margin-left: auto; margin-right: auto;">
                <tr style="background-color:#15F5BA">
                    <th>Name</th>
                    <th>Department</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>City</th>
                </tr>
                <xsl:for-each select="database/employee">
                    <tr style="background-color:#FEFBF6">
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="department"/></td>
                        <td><xsl:value-of select="age"/></td>
                        <td><xsl:value-of select="gender"/></td>
                        <td><xsl:value-of select="city"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>