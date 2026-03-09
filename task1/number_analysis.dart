// Task 1: Number Analysis App
// Name: Mikeale Alemu

// this function find the max number in the list
int findMax(List<int> numbers) {
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  return max;
}

// this function find the minimum number
int findMin(List<int> numbers) {
  int min = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  return min;
}

// this function calculate the sum of numbers
int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }

  return sum;
}

// this function calculate the average
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  double avg = sum / numbers.length;

  return avg;
}

void main() {
  // list of numbers
  List<int> numbers = [34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  int maxValue = findMax(numbers);
  int minValue = findMin(numbers);
  int total = calculateSum(numbers);
  double average = calculateAverage(numbers);

  print("Number Analysis Results");
  print("=======================");
  print("Numbers: $numbers");
  print("Maximum value : $maxValue");
  print("Minimum value : $minValue");
  print("Sum           : $total");
  print("Average       : $average");
}