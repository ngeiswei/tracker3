(
_seq "./tracker3.so" fl
_clk var
0 120 4 clock _clk set

_clk get _notes _gates "test.rnt" _seq fe

0 _notes tget "val" print mtof 
0 _gates tget 0.5 0 thresh 
0.001 tport 
0.3 1 1 1 fm 

0 _gates tget 0.01 port *

1 _notes tget 
1 _gates tget 0.5 0 thresh 0.001 tport 

6 0.1 sine +  mtof 0.3 0.25 square 1000

butlp 
1 _gates tget 0.01 0.1 0.4 0.1 adsr *
+


dup
_seq fc
)
