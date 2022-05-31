<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"><!-- "/" es un expresión  que hace referencia a que documentos se le va aplicar 
    estilos xpath-->
<html> 
<head>
<style>
table {
   border: 1px solid red;
}
tr {
   background-color: #4CAF50;
   text-align: left;
}
</style>
</head>
<body>
  <h2>My CD Collection</h2>
  <table>
    <tr >
      <th>Title</th>
      <th>Artist</th>
    </tr>
    <xsl:for-each select="/catalog/cd"><!-- for-each pertenece al Espacio de NombreS XSL-->
    <xsl:sort select="artist"/>
    <tr>
        <td><xsl:value-of select="title"/></td><!--Con 'value-of' Accede o devuelve los valores title-->
        <td><xsl:value-of select="artist"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-- PATH
  /catalog/cd[artist='Bod Dylan']