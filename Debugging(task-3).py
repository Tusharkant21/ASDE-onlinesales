'  Calculating  factorial of (n-9) instead of (n-10) 
'because the value of n is already reduced by 10 in the condition (n < 20).  '

'Calculate the sum of all integers between 1 and (n-19) instead of (n-20) 
' because (n-20) would exclude the number 1. By using (n-19), we include 1.'
                        

def compute(n):
    if n < 10:
        out = n ** 2 

    elif n < 20:
        out = 1 
                          
                         
        for i in range(1, n-9):
            out *= i
    else:
        lim = n - 19 
        out = lim * lim
        out = out - lim
        out = out / 2 
    print(out)
n = int(input("Enter an integer: "))
compute(n)