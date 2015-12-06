(* regCred.ml *)

(* endPoints must be an array *)

type nodeID = { bytes : string }    (* should be uint8 array *)

type endPoint = { protocol : string; address: int ;   (* must be uint32 *)
    port: int; }    (* should be uint16 *)

type rsaPublicKey = { e : int; n : int; }   (* MUST be bigint *)

type decimalVersion = {version : int ; }    (* must be uint32 *)

type regCred = {name : string; id : nodeID; ck : rsaPublicKey; 
    sk : rsaPublicKey; endPoints : endPoint array;  version: decimalVersion }
