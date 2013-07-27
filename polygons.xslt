<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

<xsl:template match="state">
- (MKPolygon *)polygonFor<xsl:value-of select="translate(@name,' ','_')" />
{
    CLLocationCoordinate2D points[<xsl:value-of select="count(point)" />];
<xsl:for-each select="point">
    points[<xsl:value-of select="position()-1" />] = CLLocationCoordinate2DMake(<xsl:value-of select="@lat" />, <xsl:value-of select="@lng" />);</xsl:for-each>

    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:<xsl:value-of select="count(point)" />];
    
    return poly;
}
</xsl:template>

</xsl:stylesheet>