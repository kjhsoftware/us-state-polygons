//
//  LPZStatePolygon.h
//  License Plate Zone
//  https://itunes.apple.com/us/app/license-plate-zone/id509842366
//
//  Copyright (c) 2012 KJH Software LLC. All rights reserved.
//  If downloaded from https://github.com/kjhsoftware/us-state-polygons,
//  available under The MIT License (MIT).
//

#import <Foundation/Foundation.h>
#import <MapKit/MKPolygon.h>

@interface LPZStatePolygons : NSObject

// code for .m generated from
// xsltproc polygons.xslt states.xml > polygons.txt

- (MKPolygon *)polygonForState:(NSString *)state;

@end
