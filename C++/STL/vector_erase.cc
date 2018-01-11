#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

vector<int> get_vector() {
    int size, n;
    vector<int> v;
    
    cin >> size;
    for(int i=0; i<size; i++) {
        cin >> n;
        v.push_back(n);
    }
    
    return v;
}


void print_vector(vector<int> v) {
    for(vector<int>::iterator it=v.begin(); it!=v.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;
}


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int i, j;
    vector<int> v = get_vector();
    
    cin >> i;
    v.erase(v.begin() + i - 1);
    cin >> i >> j;
    v.erase(v.begin() + i - 1, v.begin() + j - 1);
    cout << v.size() << endl;
    print_vector(v);
    return 0;
}
