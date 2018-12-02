2.12.18 03:59

KP vs all the other classes, training 17+17 testing 5+9, simulations 75, epoch 10
```
Smart train stats (mean, std)	 (0.9498039215686273, 0.025311591471537144)
Smart test stats (mean, std)	 (0.8942857142857145, 0.042634341496379825)
it took	84.36s with 75 simulations

Stupid train stats (mean, std)	 (0.9576470588235293, 0.019942246486417448)
Stupid test stats (mean, std)	 (0.9257142857142857, 0.047294129592133874)

```

KP vs pancakes, training 17+17 testing 5+5, simulations 75, epoch 10

```
smart train pancake (mean, std)	 (0.8807843137254903, 0.03323861976536015)
smart test pancake (mean, std)	 (0.9813333333333335, 0.042247945380679615)

stypid train pancake (mean, std)	 (0.9086274509803921, 0.020134113965479903)
stypid test pancake (mean, std)	 (0.9986666666666667, 0.011469767022723499)
```

*With only 2 classes the smart approach doesn't really outperform vanilla approach. How about 10001 classes?*

Bluewhales vs FinnWhales(tm), training 8+8 testing 5+5, sim 50 epoch 25

```
smart train whales (mean, std)	 (0.84875, 0.057404812516025173)
smart test whales (mean, std)	 (0.6080000000000001, 0.16503332996701)

stypid train whale (mean, std)	 (0.94, 0.04993746088859544)
stypid test whale (mean, std)	 (0.48400000000000004, 0.1750542772970715)
```