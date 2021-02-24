#include <iostream>
using namespace std;


void bubble_sort(int* arr,int length)
{
  int temp = 0;

  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length-1; j++)
    {
      if(arr[j] > arr[j+1])
      {
        
        //temp = arr[j];
        //arr[j] = arr[j+1];
        //arr[j+1] = temp;
        arr[j] = arr[j+1];
        arr[j+1] = arr[j];
        
      }
    }
  }

  for(int i=0; i<length; i++)
  {
    cout << arr[i] << " ";
  }

}
int main()
{
  int array[6] = {4, 2, 1, 8, 7, 6};
  bubble_sort(array,6);
}
