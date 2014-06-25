#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

int main( )
{
  // BEGIN personal data
  const float body_water_in_blood = 0.806;

  const float ethenol_conversion = 1.2; 

  float body_weight = 100.0; 	//weight in kilograms
  char gender = 'F';
  float body_water_constant = 0.58; //constant for females
  float metabolism = 0.017; // constant for females
  if (gender == 'F')
  {
	body_water_constant = 0.49; // constant for males
	metabolism = 0.015; // constant for males
  }
  const float constants = (body_water_in_blood * ethenol_conversion ) / ( body_weight * body_water_constant);
  // END personal data
  
  // example numbers 
  float standard_drinks = 1.0;	// 10 grams of ethenol
  float duration = 1.23; 	// duration in hours 

  const long start_time = 0;
  
  //conversions, (example numbers)
  float beverage_pc_alcohol = 0.0720;
  float beverage_size_in_fluid_ounces = 12.0;
  // using constant values of 29.57 grams in a US fluid oz 
  // and 14 grams in a standard drink
  float total_std_drinks = beverage_pc_alcohol * (beverage_size_in_fluid_ounces * 29.57)/14;
  
  // END conversions
  vector<float> ebacs;

  // calculations  
  float current_ebac, current_time;
  current_time = 1; 
  current_ebac = constants * total_std_drinks - ( metabolism * (current_time - start_time ));
  
  ebacs.push_back(current_ebac);
  return 0;
}

