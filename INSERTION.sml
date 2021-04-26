structure Sort = struct 

    fun insert (m,[]) = [m]
    | insert (n, h::t) = if( n <h) then n::h::t else h :: (insert(n,t))

    fun InsertionSort [] = []
    | InsertionSort (t::p) = insert(t  , InsertionSort p)


end