var emptyArray: [String] = []
var shoppingList = ["apples", "kale", "dressing", "tomatoes"]
print(shoppingList)

print(shoppingList[0])

shoppingList.append("pepper")
print(shoppingList)

shoppingList.append(contentsOf: ["salt", "garlic"])
print(shoppingList)

shoppingList.remove(at: 3)
print(shoppingList);
