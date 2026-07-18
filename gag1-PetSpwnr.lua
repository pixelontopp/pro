-- this file was protected using WeAreDevs (Seccure) via [https://pixel-obfuscator.lovable.app]
local lOIlIIl="FCuHzLBerZd1R97yJtV5W6NbMOPi/Gxhpj3A+2EvqcXUlwDgSsfoYma4QIK0nk8T";
local OOl0I0I="3csUWkQ+9+FgWXxU0wPWMX5gxl/+fj92VVE2E+73iAcgZDZqXAQAPYTSpKvCGhIeUpaHkovj9/cz2Zal6LDlbBc8+X0Y66if8SUi6xQL10HQMgRBFw6XneqNG2RQEvE1zBw543JaJukVcKgDmct3c7kKsf5dza6ZdPNPJKZD7EnEQE3Xy39U5TuHX/LmT+xDHMy47xzmf+VWvPKXpKqrdac6GRKDfI4n/u2KEoJfD0TrahvCj7oM3ujBZTTa7xENLwb70DInDbfrZWIBRtvyUYFMH6b9zxVmAuAgy+MGk08FBJhzi5jPkPcSxjOaWop=";
local 0IIIIlO=74;
local 0IOlll0=180;
local 0III00I={};
for l0I0lII=1,#lOIlIIl do 0III00I[lOIlIIl:sub(l0I0lII,l0I0lII)]=l0I0lII-1 end
local 0O00III={};
local 000l0ll=1;
for l0I0lII=1,#OOl0I0I,4 do
  local c1=0III00I[OOl0I0I:sub(l0I0lII,l0I0lII)];
  local c2=0III00I[OOl0I0I:sub(l0I0lII+1,l0I0lII+1)];
  local ch3=OOl0I0I:sub(l0I0lII+2,l0I0lII+2);
  local ch4=OOl0I0I:sub(l0I0lII+3,l0I0lII+3);
  local c3=0III00I[ch3];
  local c4=0III00I[ch4];
  0O00III[000l0ll]=(c1*4 + math.floor(c2/16)) % 256; 000l0ll=000l0ll+1;
  if ch3~="=" then 0O00III[000l0ll]=((c2%16)*16 + math.floor(c3/4)) % 256; 000l0ll=000l0ll+1 end
  if ch4~="=" then 0O00III[000l0ll]=((c3%4)*64 + c4) % 256; 000l0ll=000l0ll+1 end
end
local lOIOl0I=0IOlll0;
local OO00ll0={};
local _bx=function(a,b) return bit32 and bit32.bxor(a,b) or (a~b) end
for l0I0lII=1,#0O00III do
  local s2=0O00III[l0I0lII];
  local s1=_bx(s2,lOIOl0I);
  local b=_bx(s1,0IIIIlO);
  OO00ll0[l0I0lII]=string.char(b);
  lOIOl0I=((lOIOl0I*131 + s2 + 17) % 256);
  if lOIOl0I==0 then lOIOl0I=3 end
end
local _s=table.concat(OO00ll0);
(loadstring or load)(_s)()
