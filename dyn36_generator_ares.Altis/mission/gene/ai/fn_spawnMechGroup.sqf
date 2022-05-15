params ["_position",["_roadDir", 0]];

private _leaderType = selectRandom bso_gene_gl;
private _transType = selectRandom bso_gene_opfTrans;
private _group = createGroup [bso_gene_side, true];

private _trans = [_position, _roadDir, _transType, _group] call BIS_fnc_spawnVehicle;

// Gets the number of cargo seats as "_cargoSeats" to be filled with transportable units
private _totalSeats = [_transType, true] call BIS_fnc_crewCount; // Number of total seats: crew + non-FFV cargo/passengers + FFV cargo/passengers
private _crewSeats = [_transType, false] call BIS_fnc_crewCount; // Number of crew seats only
private _cargoSeats = _totalSeats - _crewSeats; // Number of total cargo/passenger seats: non-FFV + FFV

for "_i" from 1 to _cargoSeats do {
    private _unitType = selectRandom bso_gene_opfgrp;
    private _unit = _group createUnit [_unitType, _position, [], 5, "NONE"];
    _unit moveInAny vehicle leader _unit;
};

_group
