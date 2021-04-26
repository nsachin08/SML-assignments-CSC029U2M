structure Search = struct

fun nth(xs , i) =
  if i < 0
  then raise Subscript
  else 
        case xs of  
              [] => raise Subscript
            | (x::xs) => if i=0 then x else nth(xs,i-1)

fun bin(l,r,key,arr) =
  if l > r
  then print ((Int.toString(key)^" Not Found"^"\n"))
  else 
    case arr of
          [] => raise Empty
          | (arr) => 
            if nth(arr, ((l+r) div 2)) = key 
            then print (Int.toString(key)^" Found "^"\n")
            else 
              if nth(arr, ((l+r) div 2)) > key
              then bin (l,((l+r) div 2)-1,key,arr)
              else bin (((l+r) div 2)+1,r,key,arr)


end

