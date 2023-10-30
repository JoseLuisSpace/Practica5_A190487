<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" omit-xml-declaration="yes" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Dispositivos gama alta</title>
        <link rel="stylesheet" type="text/css" href="styles.css" />
      </head>
      <body>
        <center><h1>Lista de Telefonos</h1></center>
        <table border="1">
          <tr>
            <th>Nombre del dispositivo</th>
            <th>Peso Mexicano</th>
          </tr>
          <xsl:for-each select="telefonos/telefono">
            <tr>
              <td>
                <xsl:value-of select="modelo"/>
              </td>
              <td>
                <xsl:value-of select="precio"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>