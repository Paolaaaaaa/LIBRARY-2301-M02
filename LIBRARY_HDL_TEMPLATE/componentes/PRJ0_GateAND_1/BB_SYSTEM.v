/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniandes.edu.co
//# 
//# This program is free software: you can redistribute it and/or modify
//# it under the terms of the GNU General Public License as published by
//# the Free Software Foundation, version 3 of the License.
//#
//# This program is distributed in the hope that it will be useful,
//# but WITHOUT ANY WARRANTY; without even the implied warranty of
//# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//# GNU General Public License for more details.
//#
//# You should have received a copy of the GNU General Public License
//# along with this program.  If not, see <http://www.gnu.org/licenses/>
//####################################################################*/
///Q=======================================================
//  MODULE Definition
//=======================================================
module BB_SYSTEM (
//////////// OUTPUTS //////////
	BB_SYSTEM_z_Out,
//////////// INPUTS //////////
	BB_SYSTEM_a_In,
	BB_SYSTEM_b_In
);
//=======================================================
//  PARAMETER declarations
//=======================================================
//=======================================================
//  PORT declarations
//=======================================================
output		BB_SYSTEM_z_Out;
input		BB_SYSTEM_a_In;
input 		BB_SYSTEM_b_In;
//=======================================================Q/
///A=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================
CC_GateAND CC_GateAND_u0 (
// port map - connection between master ports and signals/registers   
	.CC_GateAND_z_Out(BB_SYSTEM_z_Out),
	.CC_GateAND_a_In(BB_SYSTEM_a_In),
	.CC_GateAND_b_In(BB_SYSTEM_b_In)
);
endmodule
//=======================================================A/
