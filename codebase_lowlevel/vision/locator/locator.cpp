/* 
 * File:   locator.cpp
 * Author: Guivenca
 *
 * Created on July 17, 2015
 */

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <time.h>
#include <stdio.h>

#include "../pgr2opencv.cpp"
//#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace std; /* 
 * File:   newmain.cpp
 * Author: Guivenca
 *
 * Created on June 22, 2015, 2:08 PM
 */

#include <cstdlib>
#include <math.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <time.h>
#include <ctime>
#include <stdio.h>

#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui/highgui.hpp>

#ifndef _CRT_SECURE_NO_WARNINGS
#define _CRT_SECURE_NO_WARNINGS
#endif

using namespace cv;
using namespace std;

/*
 ****************************************************************************
 */
float dist(Point2f A, Point2f C) {
    Point2f diff = A - C;
    return sqrt(diff.x * diff.x + diff.y * diff.y);
}

struct Polygon {
    vector<Point> points;
    int area;

    Polygon();
    Polygon(int);
    Polygon(int, vector<Point>);
    int size();

    inline bool operator<(const Polygon& other) const;

};

Polygon::Polygon() {
    area = 0;
}
Polygon::Polygon(int n) {
    area = 0;
    points.resize(n);
    for (int k=0;k<n;k++)
        points[k]=(Point(0,0));
}
Polygon::Polygon(int a, vector<Point> vec) {
    area = a;
    points = vec;
}
int Polygon::size() {
    return points.size();
}

inline bool Polygon::operator<(const Polygon& other) const {
    return this->area < other.area;
}



bool findReferenceRectangle(const vector<Polygon> poly3, const vector<Polygon> poly4,Polygon* rect_base,Polygon* triang_base) {
    bool found = false;
    int min_distance, max_distance;
    int pointy_i, base_i;

    for (int i = 0; i < poly3.size(); i++)
        for (int j = 0; j < poly4.size(); j++) {
            //find the pointy corner of the triangle
            int side[3];
            pointy_i = 0;
            side[2] = dist(poly3[i].points[0], poly3[i].points[1]);
            side[0] = dist(poly3[i].points[1], poly3[i].points[2]);
            side[1] = dist(poly3[i].points[2], poly3[i].points[0]);
            if (side[0] > side[1]) pointy_i = 1;
            if (side[pointy_i] > side[2]) pointy_i = 2;
            
            
            //find the base point of the quadrilateral 
            base_i = 0;
            min_distance = dist(poly4[j].points[0], poly3[i].points[pointy_i]);
            max_distance = min_distance;
            for (int k = 1; k < 4; k++) {
                int new_distance = dist(poly4[j].points[k], poly3[i].points[pointy_i]);
                ;
                if (min_distance > new_distance) {
                    min_distance = new_distance;
                    base_i = k;
                }
                if (max_distance < new_distance)max_distance = new_distance;

            }
            //TODO test criteria
            // TODO be careful with division by 0. It seems safe unless the area 
            //is not enforced to be higher than something
            //cross ratio and alignemnt are less approximate criteria
            if (((double)min_distance / max_distance) <0.1 &&(poly4[j].area>3*poly3[i].area)){
                
                cout<<"ratio "<<(double)min_distance / max_distance<<endl;
                for (int k=0;k<3;k++){
                    triang_base->points[k]=poly3[i].points[(k+pointy_i)%3];
                }
                
                for (int k=0;k<4;k++){
                    rect_base->points[k]=poly4[j].points[(k+base_i)%4];
                }
                
                return true;
            }


        }



    return found;
};

int main(int argc, char** argv) {

    Mat distCoeffs(5, 1, cv::DataType<double>::type);
    distCoeffs.at<double>(0) = -4.1802327018241026e-001;
    distCoeffs.at<double>(1) = 5.0715243805833121e-001;
    distCoeffs.at<double>(2) = 0.;
    distCoeffs.at<double>(3) = 0.;
    distCoeffs.at<double>(4) = -5.7843596847939704e-001;
    Mat rvec(3, 1, cv::DataType<double>::type);
    Mat tvec(3, 1, cv::DataType<double>::type);


    Mat src, gray_src, gray,drawing;
    int thresh_up = 123;//90
    int thresh_low = 0;//0
    int frame_trackbar=1;
    int frame;

    pgr2cv::VideoCapture cap;
    cap.open(0);
    double dWidth = 1280; //get the width of frames of the video
    double dHeight = 1024; //get the height of frames of the video
    Size frameSize(static_cast<int>(dWidth), static_cast<int>(dHeight));
    VideoWriter video ;
    //video.open("C:\\Users\\Guivenca\\Desktop\\AT\\video2.avi",-1, 20, frameSize, true); //initialize the VideoWriter object 
    
    /*
    if(!video.isOpened() ){
        cout<<"could not open video"<<endl;
        return -1;
    }
     */
	while(true){
    //while (waitKey(10) <0) {
    //for(int frame=1;frame<=504;frame++){
	pgr2cv::update_FPS(time(NULL));
        cap>>gray_src;
/*
        //frame=frame_trackbar;
        if(frame<1) frame=1;
        ostringstream convert;
        convert<<"C:\\Users\\Guivenca\\Desktop\\AT\\whiteboard test\\img-"<<frame<<".jpg";        
        string file=convert.str();
        src=imread(file);
        cout<<"frame "<<frame<<endl;
        cvtColor(src, gray_src, CV_BGR2GRAY);   
   */   

	
	//cvtColor(gray_src, src, CV_GRAY2BGR); 
        inRange(gray_src, thresh_low, thresh_up, gray);
	//imshow("gray", gray);
        //find the contours
        vector< vector<Point> > contours; // Vector for storing contour
        vector<Vec4i> hierarchy;
        findContours(gray, contours, hierarchy, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE);

        vector<vector<Point> > contours_poly(contours.size());
        RNG rng(12345);
        
        int index = 13;
        //cout << " contours size: " << contours.size() << endl;


        // remove those too small or too complex
        // approximate those left. 
        // make a separate list of quadrilateral/ triangle?

        vector<Polygon> poly3;
        vector<Polygon> poly4;
        poly3.resize(0);
        poly4.resize(0);
/*
        for (int i = 0; i < contours.size(); i++) {
            int area = contourArea(contours[i], false);
            if (contourArea(contours[i], false) > 30 && contours[i].size() < 2000) {
                approxPolyDP(Mat(contours[i]), contours_poly[i], 7, true);
                if (contours_poly[i].size() == 4 || contours_poly[i].size() == 3) {
                    Polygon new_p = Polygon(area, contours_poly[i]);
                    if (contours_poly[i].size() == 4) poly4.push_back(new_p);
                    if (contours_poly[i].size() == 3) poly3.push_back(new_p);
                }
            }
        }
 */   
        sort(poly3.rbegin(), poly3.rend());
        sort(poly4.rbegin(), poly4.rend());
        
        Polygon rect_base=Polygon(4);
        Polygon tri_base=Polygon(3);
        bool found = true;//findReferenceRectangle(poly3, poly4,&rect_base,&tri_base);
        //cout << "found reference rectangle? :" << found << endl;
	
	bool draw=false;
	if(draw) drawing = Mat::zeros(src.size(), CV_8UC3);
        if ( found&&draw){
            
            Scalar color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
            drawContours(src, vector<vector<Point> >(1,rect_base.points), -1, color, 1, 8);
            
            for( int k=0;k<4;k++){
                color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
                circle(src, rect_base.points[k], 3, color, -1);
            }
            
            
            
            color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
            drawContours(src, vector<vector<Point> >(1,tri_base.points), -1, color, 1, 8);
            
             for( int k=0;k<3;k++){
                color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
                circle(src, tri_base.points[k], 3, color, -1);
            }

        }

       
        if (draw) {
            for (int i = 0; i < contours.size(); i++) {
                Scalar color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
                drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
                if (contourArea(contours[i], false) > 30 && contours[i].size() < 2000) {

                    //TODO maybe have a more accurate aproximation once you know 
                    //the targets
                    approxPolyDP(Mat(contours[i]), contours_poly[i], 7, true);
                    

                    //if (contours_poly[i].size() == 4||contours_poly[i].size() == 3)
                    {
                        drawContours(drawing, contours_poly, i, color, 2, 8, hierarchy, 0, Point());
                        color = Scalar(255, 255, 255);
                        for (int j = 0; j < contours_poly.at(i).size(); j++) {
                            circle(drawing, contours_poly.at(i).at(j), 3, color, -1);
                            //imagePoints.at(j)=contours_poly.at(i).at(j);
                            //cout<<"Point "<<j<<" : "<<contours_poly.at(i).at(j)<<endl;
                            //diff.
                        }
                        //solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec);
                        //cout<< "index: "<<i<<endl;
                        //cout<<"tvec: "<<tvec<<endl;
                        //cout<<"rvec: "<<rvec<<endl;
                        //cout<<endl;
                    }
                }
            }

	        /// Show in a window
 /*      
        createTrackbar("threshold upper", "gray", &thresh_up, 255);
        createTrackbar("threshold lower", "gray", &thresh_low, 255);
        createTrackbar("frame", "view", &frame_trackbar, 504);
        namedWindow("Contours", CV_WINDOW_NORMAL);
        resizeWindow("Contours",800,600);
        //resizeWindow("view",800,600);
        //resizeWindow("gray",800,600);
        imshow("Contours", drawing);
        imshow("view", src);
        //imshow("polygon",gray);
*/
        }

/*

        //video<<src;
  */        
    }





    return 0;
}
