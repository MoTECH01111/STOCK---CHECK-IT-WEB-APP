<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />

    <!-- Template to match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>CheckIt Store</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>CheckIt Store</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Style</th>
                        <th>Size</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Quantity</th>
                        <th>Availability</th>
                    </tr>
                    <!-- Iterate over each item in the stock -->
                    <xsl:for-each select="CheckIt/shop/stock/item">
                        <tr>
                            <td><xsl:value-of select="@id" /></td>
                            <td><xsl:value-of select="name" /></td>
                            <td><xsl:value-of select="style" /></td>
                            <td><xsl:value-of select="size" /></td>
                            <td><xsl:value-of select="price" /></td>
                            <td><xsl:value-of select="description" /></td>
                            <td><xsl:value-of select="quantity" /></td>
                            <td><xsl:value-of select="availability" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
