//
//  RadarSDKMotion.h
//  RadarSDKMotion
//
//  Created by Kenny Hu on 7/30/24.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

//! Project version number for RadarSDKMotion.
FOUNDATION_EXPORT double RadarSDKMotionVersionNumber;

//! Project version string for RadarSDKMotion.
FOUNDATION_EXPORT const unsigned char RadarSDKMotionVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <RadarSDKMotion/PublicHeader.h>


// Define the interface for export
@interface RadarSDKMotion : NSObject


- (void)stopActivityUpdates;
- (void)startActivityUpdatesToQueue: (NSOperationQueue *)queue withHandler : (CMMotionActivityHandler)handler;

- (void)startAccelerometerUpdates;
- (CMAccelerometerData *)getAccelerometerData;
- (void)stopAccelerometerUpdates;
- (void)startGyroUpdates;
- (CMGyroData *)getGyroData;
- (void)stopGyroUpdates;
- (void)startMagnetometerUpdates;
- (CMMagnetometerData *)getMagnetometerData;
- (void)stopMagnetometerUpdates;

@end


