# ldacs-make-symbolic-tamarin
Tamarin code for a proving mutual authentication and forward secrecy for a simplified variant of the LDACS MAKE protocol. 

More details and a summary of the results can be found in

> Marcel Tiepelt, Christian Martin, and Nils Maeurer, "Post-Quantum Ready Key Agreement for Aviation," IACR Communications in Cryptology, vol. 1, no. 1, Apr 09, 2024, doi: 10.62056/aebn2isfg.

[Post-Quantum Ready Key Agreement for Aviation](https://cic.iacr.org/p/1/1/17)

# Tamarin Code 

The tamarin source files are in  

`/src/`


# Run 

## Using Tamarin directly 

With the tamarin prover installed to 

`/path/to/tamarin/`

and `FILENAME.spthy` being any of the tamarin files, run

`/path/to/tamarin/tamarin-prover --prove=* /src/FILENAME.spthy`

## Using Docker 

`sh resentAndBuildDocker.sh` 

`sh runDocker.sh` 


