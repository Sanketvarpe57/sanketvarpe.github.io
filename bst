#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Define structure for BST node
struct Node {
    char name[50];
    struct Node *left, *right;
};

// Function to create a new node
struct Node* createNode(char name[]) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    strcpy(newNode->name, name);
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to insert a new name in BST
struct Node* insert(struct Node* root, char name[]) {
    if (root == NULL)
        return createNode(name);

    if (strcmp(name, root->name) < 0)
        root->left = insert(root->left, name);
    else if (strcmp(name, root->name) > 0)
        root->right = insert(root->right, name);
    else
        printf("Duplicate name not allowed!\n");

    return root;
}

// Function to search for a name in BST
void search(struct Node* root, char name[]) {
    if (root == NULL) {
        printf("Name '%s' not found in directory.\n", name);
        return;
    }

    if (strcmp(name, root->name) == 0) {
        printf("Name '%s' found in directory.\n", name);
    } else if (strcmp(name, root->name) < 0) {
        search(root->left, name);
    } else {
        search(root->right, name);
    }
}

// Inorder Traversal (Alphabetical order)
void inorder(struct Node* root) {
    if (root != NULL) {
        inorder(root->left);
        printf("%s\n", root->name);
        inorder(root->right);
    }
}

// Preorder Traversal
void preorder(struct Node* root) {
    if (root != NULL) {
        printf("%s\n", root->name);
        preorder(root->left);
        preorder(root->right);
    }
}

// Postorder Traversal
void postorder(struct Node* root) {
    if (root != NULL) {
        postorder(root->left);
        postorder(root->right);
        printf("%s\n", root->name);
    }
}

int main() {
    struct Node* root = NULL;
    int choice;
    char name[50];

    printf("=== Online Directory System using BST ===\n");

    do {
        printf("\n1. Insert Name");
        printf("\n2. Search Name");
        printf("\n3. Display Inorder (Sorted)");
        printf("\n4. Display Preorder");
        printf("\n5. Display Postorder");
        printf("\n6. Exit");
        printf("\nEnter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter name to insert: ");
                scanf("%s", name);
                root = insert(root, name);
                break;
            case 2:
                printf("Enter name to search: ");
                scanf("%s", name);
                search(root, name);
                break;
            case 3:
                printf("\n--- Directory (Inorder - Sorted) ---\n");
                inorder(root);
                break;
            case 4:
                printf("\n--- Preorder Traversal ---\n");
                preorder(root);
                break;
            case 5:
                printf("\n--- Postorder Traversal ---\n");
                postorder(root);
                break;
            case 6:
                printf("\nExiting Directory System...\n");
                break;
            default:
                printf("\nInvalid choice! Try again.\n");
        }
    } while (choice != 6);

    return 0;
}
