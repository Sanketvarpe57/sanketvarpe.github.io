#include <stdio.h>
#include <string.h>

#define MAX 50   // Maximum number of students

// Structure to store student details
struct Student {
    int rollno;
    char name[50];
    float marks;
};

int n = 0;  // total number of students
struct Student s[MAX];

// Function to create student records
void create() {
    printf("\nEnter number of students: ");
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        printf("\nEnter details for student %d:\n", i + 1);
        printf("Roll No: ");
        scanf("%d", &s[i].rollno);
        printf("Name: ");
        scanf("%s", s[i].name);
        printf("Marks: ");
        scanf("%f", &s[i].marks);
    }
}

// Function to display all student records
void display() {
    if (n == 0) {
        printf("\nNo records to display!\n");
        return;
    }

    printf("\n--- Student Records ---\n");
    printf("Roll No\tName\tMarks\n");
    for (int i = 0; i < n; i++) {
        printf("%d\t%s\t%.2f\n", s[i].rollno, s[i].name, s[i].marks);
    }
}

// Function to search student by roll number
void search() {
    int roll;
    printf("\nEnter Roll No to search: ");
    scanf("%d", &roll);

    for (int i = 0; i < n; i++) {
        if (s[i].rollno == roll) {
            printf("\nRecord Found:\n");
            printf("Roll No: %d\nName: %s\nMarks: %.2f\n", s[i].rollno, s[i].name, s[i].marks);
            return;
        }
    }
    printf("Record not found!\n");
}

// Function to update marks by roll number
void update() {
    int roll;
    printf("\nEnter Roll No to update: ");
    scanf("%d", &roll);

    for (int i = 0; i < n; i++) {
        if (s[i].rollno == roll) {
            printf("Enter new marks for %s: ", s[i].name);
            scanf("%f", &s[i].marks);
            printf("Record updated successfully!\n");
            return;
        }
    }
    printf("Record not found!\n");
}

// Function to sort records by marks (descending)
void sort() {
    struct Student temp;
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (s[i].marks < s[j].marks) {
                temp = s[i];
                s[i] = s[j];
                s[j] = temp;
            }
        }
    }
    printf("\nRecords sorted by marks (High → Low).\n");
}

int main() {
    int choice;

    do {
        printf("\n===== Student Result Management System =====");
        printf("\n1. Create Records");
        printf("\n2. Display Records");
        printf("\n3. Search Record");
        printf("\n4. Update Record");
        printf("\n5. Sort Records");
        printf("\n6. Exit");
        printf("\nEnter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1: create(); break;
            case 2: display(); break;
            case 3: search(); break;
            case 4: update(); break;
            case 5: sort(); break;
            case 6: printf("\nExiting program...\n"); break;
            default: printf("\nInvalid choice! Try again.\n");
        }
    } while (choice != 6);

    return 0;
}
