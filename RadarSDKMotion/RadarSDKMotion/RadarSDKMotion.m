//
//  RadarSDKMotion.m
//  RadarSDKMotion
//
//  Created by Kenny Hu on 7/30/24.
//

#import "RadarSDKMotion.h"

@interface RadarSDKMotion ()

@property (nonatomic, strong) CMMotionActivityManager *activityManager;
@property (nonatomic, strong) CMMotionManager *motionManager;

@end

@implementation RadarSDKMotion

- (instancetype)init {
    self = [super init];
    if (self) {
        _activityManager = [[CMMotionActivityManager alloc] init];
        _motionManager = [[CMMotionManager alloc] init];
    }
    return self;
}

- (void)stopActivityUpdates {
    [self.activityManager stopActivityUpdates];
}

- (void)startActivityUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMotionActivityHandler)handler {
    if ([CMMotionActivityManager isActivityAvailable]) {
        [self.activityManager startActivityUpdatesToQueue:queue withHandler:handler];
    }
}

- (void)startAccelerometerUpdates {
    if (self.motionManager.isAccelerometerAvailable) {
        [self.motionManager startAccelerometerUpdates];
    }
}

- (CMAccelerometerData *)getAccelerometerData {
    return self.motionManager.accelerometerData;
}

- (void)stopAccelerometerUpdates {
    [self.motionManager stopAccelerometerUpdates];
}

- (void)startGyroUpdates {
    if (self.motionManager.isGyroAvailable) {
        [self.motionManager startGyroUpdates];
    }
}

- (CMGyroData *)getGyroData {
    return self.motionManager.gyroData;
}

- (void)stopGyroUpdates {
    [self.motionManager stopGyroUpdates];
}

- (void)startMagnetometerUpdates {
    if (self.motionManager.isMagnetometerAvailable) {
        [self.motionManager startMagnetometerUpdates];
    }
}

- (CMMagnetometerData *)getMagnetometerData {
    return self.motionManager.magnetometerData;
}

- (void)stopMagnetometerUpdates {
    [self.motionManager stopMagnetometerUpdates];
}

@end
