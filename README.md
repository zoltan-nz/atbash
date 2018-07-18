Atbash is a simple substitution cipher possible with any known alphabet. It emerged around 500-600 BCE. It works by substituting the letters of an alphabet with another.

#### Assumptions
English alphabets in order is the constant.

```CONSTANT = 'abcdefghijklmnopqrstuvwxyz'```

A random shuffle of the constant is the ciper. 

Example cipher:  ```zyxwvutsrqponmlkjihgfedcba```

Using the cipher, strings can be encypted. When the cipher and encrypted string is given it possible to decrypt the encrypted text.

#### Example 1

```
CONSTANT       = 'abcdefghijklmnopqrstuvwxyz'
cipher         = 'zodvqukgwefbyitmrsplhacxnj'
encrypted text = 'dzs'
original text  = 'car'
```

#### Example 2

```
CONSTANT       = 'abcdefghijklmnopqrstuvwxyz'
cipher         = 'xipmuzfkbrlwotjancqgveshdy'
encrypted text = 'skd qj qucbjvq?'
original text  = 'why so serious?'
```

#### The challenge

```
CONSTANT       = 'abcdefghijklmnopqrstuvwxyz'
cipher         = 'oephjizkxdawubnytvfglqsrcm'
encrypted text = 'knlfgnb, sj koqj o yvnewju'
original text  = ?
```

1. Decrypt the given encrypted text. 
2. Any character other than what you have in the constant doesn't have to be replaced.
3. Add test/spec to your solution.

Time: 30 mins