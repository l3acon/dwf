#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

int main( )
{
  // BEGIN personal data
  float body_water_in_blood = 0.806;

  float ethenol_conversion = 1.2;

  float body_weight = 100.0; 	//weight in kilograms
  char gender = 'F';
  float body_water_constant = 0.58; //for females
  float metabolism = 0.017;
  if (gender == 'F')
  {
	body_water_constant = 0.49;
	metabolism = 0.015;
  }
  const float constants = (body_water_in_blood * ethenol_conversion ) / ( body_weight * body_water_constant);
  // END personal data
  
  float standard_drinks = 1.0;	// 10 grams of ethenol
  float duration = 1.23; 	// duration in hours 

  float current_ebac;
 
  long current_time ;
  long start_time = 0;
  float total_drinks;

  vector<float> ebacs;

  // calculations  
  current_time = 1; 
  current_ebac = constants * total_drinks - ( metabolism * (current_time - start_time ));
  
  ebacs.push_back(current_ebac);
  return 0;
}

