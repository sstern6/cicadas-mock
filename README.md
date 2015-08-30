# cicadas-mock

You work for _AwesomeMotorcycle Co._ and the CEO has decided to buy 1000 motorcycles and try to sell them. She has a giant list of them but figures the new software engineer at the company, you, can help them organize and make queries against it in a more pragmatic fashion.

To Do:
- Read the CSV file and for each row (aka... bike), turn it into a "motorcycle".
- Somehow these motorcycles need to be part of a Garage or Dealership or something akin to that, right?
- Your boss wants to know some specific things:

1) How many bikes do we have that are less than 5 years old?<br>
2) How many Japanese bikes do we have (Hondas and Suzukis)?

and the last:

3) A generic query method... it returns the number of bikes that match the arguments passed, e.g.

```
dealership = Dealership.new
dealership.query("white", 2009, "BMW")  # returns a number of matching motorcycles
```
