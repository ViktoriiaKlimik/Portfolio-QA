## Collection description

With the created collection, you can reach the "Policy Calculation" stage in the Test Insurance Company and get the premium. The contract, entities, and relationships between them have been created.

### Goal of the Task

To create a collection of requests (.json) in Postman based on the described documentation. Using the obtained collection, reach the "Policy Calculation" stage in the Test Insurance Company and get the premium. 

### Steps

1. **Authenticate to obtain a token**
2. **Create a driver, insurer, owner, and car**
3. **Combine the subjects and objects of insurance into one entity "insured object"**
4. **Create a contract and update it in the AgentApp system by linking it to the "insured object" entity**
5. **Get the full calculation from the insurance company**

### Postman Features Used

- **Variables were created**
- **In the Scripts tab, requests were applied to extract the values of Id and token from the server response body and insert them into the collection variable**
- **Snippets were used to check the status code of requests**
- **POST and PATCH methods were used**
