module Test where
   fibTuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
   fibTuple (a,b,0) = (a,b,0)
   fibTuple(a,b,index)=fibTuple(b,a+b,index-1)
   
   
   
        