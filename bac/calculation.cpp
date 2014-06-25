#include <iostream>
#include <vector>

using namespace std;

class WeightedDrink 
{
  public:
  float std_drinks; 
  float dt; 

  WeightedDrink( float = 0.0, float = 0.0 );
  WeightedDrink operator + ( const WeightedDrink &operand ) const;
};

WeightedDrink::WeightedDrink(float a, float b) : std_drinks(a) , dt(b) {}

WeightedDrink WeightedDrink::operator * ( const WeightedDrink &operand ) const
{
  return WeightedDrink( std_drinks*dt + operand.std_drinks, dt + operand.dt);
}

float integrate(const vector<WeightedDrink> &v)
{
  float acc = 0.0;
  for(unsigned int i = 0; i < v.size(); ++i)
	acc += v[i] + v[i];
  return acc;
}

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

  float ebac;
  
  vector<WeightedDrink> validDrinks;

  // calculations  
  ebac = constants * std_drinks - ( metabolism - duration);
  vector<WeightedDrink> valid_drinks;
  
  return 0;
}

