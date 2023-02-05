/'Dim num as Integer

for num = 1 to 10 
print "Hello World"
next'/

/'n!=1*2*3*...*n'/

Dim i as Integer = 1
Dim fac as Integer = 1
 
for i = 1 to 4
fac = i*fac

next

''print fac

function fact (n as Integer) as Integer
	Dim in as Integer
	Dim factor as Integer = 1
	for in = 1 to n
	factor = in*factor
	next
	Return factor
end function

''print fact(4)

function factRec(n as Integer) as Integer
	
	if n = 0 then
	return 1
	elseif n = 1 then
	return 1
end if
	return factRec(n-1)*n
	
end function 


''print factRec(4)


Dim arr(5) as integer 
arr(0) = 1
arr(1) = 2
arr(2) = 7
arr(3) = 6
arr(4) = 8

''print lbound(arr)
''print ubound(arr)

Dim y as Integer
Dim state as Integer = 1
for y = lbound(arr) to ubound(arr)-2
	if arr(y) > arr(y+1) then
		state = 0
		''print state
		exit for
	
end if 
next

if state = 1 then
	''print state
end if




''Dim aArray(1 To 5) As Integer => {1, 2, 3, 4, 5}

                                                 'x10  y11 z12
''Dim array(15) as integer => {9,10,10,11,1,11,8,8,0,0,5,10,0,0,0}
''print before x
						    'x10  y11 z12
''Dim array(15) as integer => {9,14,3,11,6,8,0,13,2,0,0,0,0,0} 
'' endless loop from 0 to 15

Dim array(15) as integer => {10,15,6,7,15,2,0,0,0,0,0,0,0,0,0,10} 

''Dim array(15) as integer => {9,7,11,5,8,0,0,5,0,0,0,0,0,0,0}
'' setting value r0 in 5 cell and print this cell



Dim r0  as integer = 0
Dim r1  as integer = 0
 
/'We love
He loves
She loves
It loves
I love'/

Dim IP as integer 
/'IP - instruction pointer (keeps pointer to instruction)'/
Dim IS_r as integer 
/'IS_r - Insruction store (keeps instruction value)'/

/'
_ _ _ _
 
_ 8 7 _

_ _ _ _

_ _ _ _
'/

sub printArr(IP as integer, array() as integer, IS_r as integer, r0 as integer, r1 as integer)
    

    Dim t as integer
    for t = 0 to 15
	if t = IP then 
	    print "*";
	end if
	print array(t);
	
    next
    print ""

    print "IS_r: ";
    print  IS_r
    print "r0: ";
    print r0
    print "r1: ";
    print r1
    
end sub

''TODO написать программу которая пикает 10 раз
''TODO upgrate printArr funct


LABEL:         ''(while(true))
    IS_r = array(IP)
    ''printArr(IP, array(), IS_r,r0,r1)

    

  /' 1111
 + 1111
  10000
'/
    if IS_r = 0 then
	Goto end_i
    elseif IS_r = 1 then
	r0 = (r0 + r1) mod 16
	IP = IP+1
    elseif IS_r = 2 then
	r0 = r0 - r1
	if r0 < 0 then
	    r0 = 0
	end if
	IP = IP+1
    elseif IS_r = 3 then
	r0 = (r0 + 1) mod 16
	IP = IP+1
    elseif IS_r = 4 then
	r1 = (r1 + 1) mod 16
	IP = IP+1
    elseif IS_r = 5 then
	r0 = r0 - 1
	if r0 < 0 then
	    r0 = 0
	end if
	IP = IP+1
    elseif IS_r = 6 then
	r1 = r1 - 1
	if r1 < 0 then
	    r1 = 0
	end if
	IP = IP+1
    elseif IS_r = 7 then
	Print Chr(7)
	IP = IP+1
	sleep 500
    elseif IS_r = 8 then
	print array(IP+1)
	IP = IP+2
    elseif IS_r = 9 then
	r0 = array(array(IP+1))
	IP = IP+2
    elseif IS_r = 10 then
	r1 = array(array(IP+1))
	IP = IP+2
    elseif IS_r = 11 then
	array(array(IP+1)) = r0
	IP = IP+2
    elseif IS_r = 12 then
	array(array(IP+1)) = r1
	IP = IP+2
    elseif IS_r = 13 then
	IP = array(IP+1)
    elseif IS_r = 14 then
	if r0 = 0 then
	    IP = array(IP+1)
	else
	    IP = IP+1
	end if
    elseif IS_r = 15 then
	if  r1 <> 0 then
	    IP = array(IP+1)
	else
	    IP = IP+1
	end if
    end if
Goto LABEL


end_i:  































































































