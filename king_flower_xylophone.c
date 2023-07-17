#include <stdio.h>
#include <stdlib.h>

// Defines a structure for a partnership
struct Partner {
	char *name;
	int dedication;
	double sharedInterest;
};

// Creates a function to find potential partners
struct Partner *findPartner(struct Partner *partners, int size, int dedication, double sharedInterest) {
	for (int i = 0; i < size; i++) {
		if (partners[i].dedication >= dedication && partners[i].sharedInterest >= sharedInterest) {
			return &partners[i];
		}
	}
	return NULL;
}

// Creates a function to calculate the optimal solution
// for a partnership problem given the right partner
int partnerSolution(struct Partner *partner) {
	int solution = partner->dedication * partner->sharedInterest; 
	printf("The optimal solution for %s is: %d\n", partner->name, solution);
	return solution;
}

int main() {
	// Creates a number of potential partners
	struct Partner partners[] = { 
		{"John Doe", 10, 0.6},
		{"Jane Smith", 8, 0.7},
		{"Steve Williams", 9, 0.5},
		{"Sally Jones", 7, 0.8}
	};
	// Finds a partner with the right dedication and shared interest
	struct Partner *partner = findPartner(partners, 4, 8, 0.6);
	// Calculates the optimal solution for the partnership problem
	int solution = partnerSolution(partner);
	
	printf("The power of partnership is demonstrated by the optimal solution of %d\n", solution);
	
	return 0;
}