rept=[]
def cab(m,n,l,k):
  if m<1 or n<1 or m>1 or m>l or n>k:
    return 0
  if [m,n] in rept:
    return 0
  rept.append([m,n])
  arr_d=cab(m+2,n+1,l,k)
  arr_i=cab(m+2,n-1,l,k)
  der_a=cab(m+1,n+2,l,k)
  der_b=cab(m-1,n+2,l,k)
  aba_d=cab(m-2,n+1,l,k)
  arr_a=cab(m-2,n-1,l,k)
  izq_b=cab(m+1,n-2,l,k)
  izq_a=cab(m-1,n+2,l,k)
  return 1
print(cab(8,8,8,8))  