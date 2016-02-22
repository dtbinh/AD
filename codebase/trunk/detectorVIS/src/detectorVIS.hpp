#ifndef DETECTORVIS_H
#define DETECTORVIS_H

#include "../../framework/framework.hpp"

//Detector/camera parameters
#include "../../framework/paramsDetectorVIS.hpp"

class paramsDetectorVIS_t : public podBase_t
{

public:

    //Pod-specific members to store received messages of channels that this POD is subscribed to (Note that every pod is auto-subscribed to statusWatchdog and has a member to store this (see base class constructor))
    agile::pose_t       testdata;
    agile::statusPod_t  statusTestsender;

    //constructor
    detectorVIS_t (string podName, int64_t callInterval) : podBase_t(podName, callInterval)
    {
        //Pod-specific initialization
        //...
    }

    //Pod-specifc members for storing values (if some values in the computation-cycle or statusUpdate-cycle are needed over more than 1 function call)
    agile::statusDrone_t statusDrone;

    //Pod-specific member functions

};








#endif