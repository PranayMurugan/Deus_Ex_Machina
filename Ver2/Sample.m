classdef Sample < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        HelpButton                     matlab.ui.control.Button
        FormulaTextArea                matlab.ui.control.TextArea
        FormulaLabel                   matlab.ui.control.Label
        VariablesrequiredtosolveTextArea  matlab.ui.control.TextArea
        VariablesrequiredtosolveLabel  matlab.ui.control.Label
        ResetButton                    matlab.ui.control.Button
        ComputeButton                  matlab.ui.control.Button
        TabGroup                       matlab.ui.container.TabGroup
        VariablesgivenTab              matlab.ui.container.Tab
        Geomalth_GCheckBox             matlab.ui.control.CheckBox
        TimeCheckBox                   matlab.ui.control.CheckBox
        ThetaCheckBox                  matlab.ui.control.CheckBox
        Freestreamdensityrho_infCheckBox  matlab.ui.control.CheckBox
        Meansealvlpressrho_0CheckBox   matlab.ui.control.CheckBox
        DensityrhoCheckBox             matlab.ui.control.CheckBox
        RadiusofearthrCheckBox         matlab.ui.control.CheckBox
        Dynamicpressureq_infCheckBox   matlab.ui.control.CheckBox
        DynamicpressureqCheckBox       matlab.ui.control.CheckBox
        Meaneffpressp_eCheckBox        matlab.ui.control.CheckBox
        staticpressurep_0CheckBox      matlab.ui.control.CheckBox
        TotalpressurepCheckBox         matlab.ui.control.CheckBox
        LoadfactornCheckBox_2          matlab.ui.control.CheckBox
        CoeffoffricplanesurfaceCheckBox  matlab.ui.control.CheckBox
        MassmCheckBox                  matlab.ui.control.CheckBox
        HeighthCheckBox                matlab.ui.control.CheckBox
        AccatMSLg_0CheckBox            matlab.ui.control.CheckBox
        AccduetogravitygCheckBox       matlab.ui.control.CheckBox
        FuelflowCheckBox               matlab.ui.control.CheckBox
        WgoffuelCheckBox               matlab.ui.control.CheckBox
        Maxloadfactorn_maxCheckBox     matlab.ui.control.CheckBox
        EfficiencyetaCheckBox          matlab.ui.control.CheckBox
        EfficiencyfactoreCheckBox_2    matlab.ui.control.CheckBox
        DeltaCheckBox                  matlab.ui.control.CheckBox
        DispofcylinderdCheckBox        matlab.ui.control.CheckBox
        SFCcCheckBox                   matlab.ui.control.CheckBox
        BreakHPbhpCheckBox             matlab.ui.control.CheckBox
        WingspanbCheckBox              matlab.ui.control.CheckBox
        AlphaCheckBox                  matlab.ui.control.CheckBox
        FuelweightW_1CheckBox          matlab.ui.control.CheckBox
        FuelweightW_0CheckBox          matlab.ui.control.CheckBox
        WeightWCheckBox                matlab.ui.control.CheckBox
        StallspeedV_stallCheckBox      matlab.ui.control.CheckBox
        V_infCheckBox                  matlab.ui.control.CheckBox
        EquintairspeedV_EASCheckBox    matlab.ui.control.CheckBox
        VelocityVCheckBox              matlab.ui.control.CheckBox
        ThrustreqT_RCheckBox           matlab.ui.control.CheckBox
        TSFCCheckBox_2                 matlab.ui.control.CheckBox
        ThrustTCheckBox                matlab.ui.control.CheckBox
        RefsurfareaS_refCheckBox       matlab.ui.control.CheckBox
        WetsurfareaS_wetCheckBox       matlab.ui.control.CheckBox
        SurfaceareaSCheckBox           matlab.ui.control.CheckBox
        ReynoldsnoReCheckBox           matlab.ui.control.CheckBox
        RPMCheckBox                    matlab.ui.control.CheckBox
        RangeRCheckBox_2               matlab.ui.control.CheckBox
        MachnoM_infCheckBox            matlab.ui.control.CheckBox
        LiftLCheckBox_2                matlab.ui.control.CheckBox
        C_LC_DmaxCheckBox              matlab.ui.control.CheckBox
        KCheckBox_2                    matlab.ui.control.CheckBox
        ForceFCheckBox                 matlab.ui.control.CheckBox
        SkindricdragD_fCheckBox        matlab.ui.control.CheckBox
        liftdragcoeffC_d0CheckBox_3    matlab.ui.control.CheckBox
        DragDCheckBox_2                matlab.ui.control.CheckBox
        SkinfriccoeffC_fCheckBox       matlab.ui.control.CheckBox
        WavedragcoeffC_dwCheckBox      matlab.ui.control.CheckBox
        PressdragcoeffC_dpCheckBox     matlab.ui.control.CheckBox
        SkinfricdragcoeffC_dfCheckBox_2  matlab.ui.control.CheckBox
        liftdragcoeffC_d0CheckBox_2    matlab.ui.control.CheckBox
        CoeffofliftC_LmaxCheckBox      matlab.ui.control.CheckBox
        CoeffofliftC_LCheckBox_2       matlab.ui.control.CheckBox
        CoeffofdragC_DCheckBox_2       matlab.ui.control.CheckBox
        AspectratioARCheckBox_2        matlab.ui.control.CheckBox
        FormulatofindTab               matlab.ui.container.Tab
        ThetaCheckBox_2                matlab.ui.control.CheckBox
        TakeofflandingperfsCheckBox    matlab.ui.control.CheckBox
        DynamicPressureq_infCheckBox   matlab.ui.control.CheckBox
        LoadfactornCheckBox            matlab.ui.control.CheckBox
        AccduetogravitygCheckBox_2     matlab.ui.control.CheckBox
        EfficiencyfactoreCheckBox      matlab.ui.control.CheckBox
        LiftLCheckBox                  matlab.ui.control.CheckBox
        WingLoadingWSCheckBox          matlab.ui.control.CheckBox
        StallSpeedV_stallCheckBox      matlab.ui.control.CheckBox
        FlightvelocityV_fCheckBox      matlab.ui.control.CheckBox
        TrueairspeedV_TASCheckBox      matlab.ui.control.CheckBox
        FoSVelocityVCheckBox           matlab.ui.control.CheckBox
        TurnrateCheckBox               matlab.ui.control.CheckBox
        ThrustrequiredT_RCheckBox      matlab.ui.control.CheckBox
        TSFCCheckBox                   matlab.ui.control.CheckBox
        SFCCheckBox                    matlab.ui.control.CheckBox
        ForceinpullupCheckBox          matlab.ui.control.CheckBox
        ForceinpulldownCheckBox        matlab.ui.control.CheckBox
        ForceinlevelturnCheckBox       matlab.ui.control.CheckBox
        RangemaxR_maxCheckBox          matlab.ui.control.CheckBox
        MinimumradiusR_minCheckBox     matlab.ui.control.CheckBox
        RangeRCheckBox                 matlab.ui.control.CheckBox
        PowerrequiredP_RCheckBox       matlab.ui.control.CheckBox
        PowerproducedPCheckBox         matlab.ui.control.CheckBox
        C_fturbulantflowCheckBox       matlab.ui.control.CheckBox
        C_flaminarflowCheckBox         matlab.ui.control.CheckBox
        LDmaxratioCheckBox             matlab.ui.control.CheckBox
        LDratioCheckBox                matlab.ui.control.CheckBox
        KCheckBox                      matlab.ui.control.CheckBox
        ForceonplaneFCheckBox          matlab.ui.control.CheckBox
        EnduranceECheckBox             matlab.ui.control.CheckBox
        DragDCheckBox                  matlab.ui.control.CheckBox
        CornervelocityCheckBox         matlab.ui.control.CheckBox
        CoeffofwavedragCheckBox        matlab.ui.control.CheckBox
        SkinfricdragcoeffC_dfCheckBox  matlab.ui.control.CheckBox
        liftdragcoeffC_d0CheckBox      matlab.ui.control.CheckBox
        InduceddragcoeffC_diCheckBox   matlab.ui.control.CheckBox
        TotaldragcoeffC_dtCheckBox     matlab.ui.control.CheckBox
        DragpolarC_dCheckBox           matlab.ui.control.CheckBox
        CoeffofliftC_LCheckBox         matlab.ui.control.CheckBox
        CoeffofdragC_DCheckBox         matlab.ui.control.CheckBox
        AspectratioARCheckBox          matlab.ui.control.CheckBox
    end

    
    properties (Access = public)
        user_input = []; % Description
        variables_tfind = [];
        formula_append = [];
        variables_listed = [];
        formula_tfind = [];
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: AspectratioARCheckBox_2
        function AspectratioARCheckBox_2ValueChanged(app, event)
            value = app.AspectratioARCheckBox_2.Value;
            switch value
                case 1
                    temp = "AR";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                        
        end

        % Value changed function: CoeffofdragC_DCheckBox_2
        function CoeffofdragC_DCheckBox_2ValueChanged(app, event)
            value = app.CoeffofdragC_DCheckBox_2.Value;
            switch value
                case 1
                    temp = "C_D";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: CoeffofliftC_LCheckBox_2
        function CoeffofliftC_LCheckBox_2ValueChanged(app, event)
            value = app.CoeffofliftC_LCheckBox_2.Value;
            switch value
                case 1
                    temp = "C_L";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: CoeffofliftC_LmaxCheckBox
        function CoeffofliftC_LmaxCheckBoxValueChanged(app, event)
            value = app.CoeffofliftC_LmaxCheckBox.Value;
            switch value
                case 1
                    temp = "C_L max";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: liftdragcoeffC_d0CheckBox_2
        function liftdragcoeffC_d0CheckBox_2ValueChanged(app, event)
            value = app.liftdragcoeffC_d0CheckBox_2.Value;
            switch value
                case 1
                    temp = "C_d0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: SkinfricdragcoeffC_dfCheckBox_2
        function SkinfricdragcoeffC_dfCheckBox_2ValueChanged(app, event)
            value = app.SkinfricdragcoeffC_dfCheckBox_2.Value;
            switch value
                case 1
                    temp = "C_df";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: PressdragcoeffC_dpCheckBox
        function PressdragcoeffC_dpCheckBoxValueChanged(app, event)
            value = app.PressdragcoeffC_dpCheckBox.Value;
            switch value
                case 1
                    temp = "C_dp";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end
        end

        % Value changed function: WavedragcoeffC_dwCheckBox
        function WavedragcoeffC_dwCheckBoxValueChanged(app, event)
            value = app.WavedragcoeffC_dwCheckBox.Value;
            switch value
                case 1
                    temp = "C_dw";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: SkinfriccoeffC_fCheckBox
        function SkinfriccoeffC_fCheckBoxValueChanged(app, event)
            value = app.SkinfriccoeffC_fCheckBox.Value;
            switch value
                case 1
                    temp = "C_f";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: DragDCheckBox_2
        function DragDCheckBox_2ValueChanged(app, event)
            value = app.DragDCheckBox_2.Value;
            switch value
                case 1
                    temp = "D";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: liftdragcoeffC_d0CheckBox_3
        function liftdragcoeffC_d0CheckBox_3ValueChanged(app, event)
            value = app.liftdragcoeffC_d0CheckBox_3.Value;
            switch value
                case 1
                    temp = "D_0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: SkindricdragD_fCheckBox
        function SkindricdragD_fCheckBoxValueChanged(app, event)
            value = app.SkindricdragD_fCheckBox.Value;
            switch value
                case 1
                    temp = "D_f";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: ForceFCheckBox
        function ForceFCheckBoxValueChanged(app, event)
            value = app.ForceFCheckBox.Value;
            switch value
                case 1
                    temp = "F";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: KCheckBox_2
        function KCheckBox_2ValueChanged(app, event)
            value = app.KCheckBox_2.Value;
            switch value
                case 1
                    temp = "K";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: C_LC_DmaxCheckBox
        function C_LC_DmaxCheckBoxValueChanged(app, event)
            value = app.C_LC_DmaxCheckBox.Value;
            switch value
                case 1
                    temp = "C_L/C_D max";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: LiftLCheckBox_2
        function LiftLCheckBox_2ValueChanged(app, event)
            value = app.LiftLCheckBox_2.Value;
            switch value
                case 1
                    temp = "L";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: MachnoM_infCheckBox
        function MachnoM_infCheckBoxValueChanged(app, event)
            value = app.MachnoM_infCheckBox.Value;
            switch value
                case 1
                    temp = "M_inf";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end
        end

        % Value changed function: RangeRCheckBox_2
        function RangeRCheckBox_2ValueChanged(app, event)
            value = app.RangeRCheckBox_2.Value;
            switch value
                case 1
                    temp = "R";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end
        end

        % Value changed function: RPMCheckBox
        function RPMCheckBoxValueChanged(app, event)
            value = app.RPMCheckBox.Value;
            switch value
                case 1
                    temp = "RPM";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end
        end

        % Value changed function: ReynoldsnoReCheckBox
        function ReynoldsnoReCheckBoxValueChanged(app, event)
            value = app.ReynoldsnoReCheckBox.Value;
            switch value
                case 1
                    temp = "Re";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                                   
        end

        % Value changed function: SurfaceareaSCheckBox
        function SurfaceareaSCheckBoxValueChanged(app, event)
            value = app.SurfaceareaSCheckBox.Value;
            switch value
                case 1
                    temp = "S";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end
        end

        % Value changed function: WetsurfareaS_wetCheckBox
        function WetsurfareaS_wetCheckBoxValueChanged(app, event)
            value = app.WetsurfareaS_wetCheckBox.Value;
            switch value
                case 1
                    temp = "S_wet";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: RefsurfareaS_refCheckBox
        function RefsurfareaS_refCheckBoxValueChanged(app, event)
            value = app.RefsurfareaS_refCheckBox.Value;
            switch value
                case 1
                    temp = "S_ref";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end 
        end

        % Value changed function: ThrustTCheckBox
        function ThrustTCheckBoxValueChanged(app, event)
            value = app.ThrustTCheckBox.Value;
            switch value
                case 1
                    temp = "T";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end 
        end

        % Value changed function: TSFCCheckBox_2
        function TSFCCheckBox_2ValueChanged(app, event)
            value = app.TSFCCheckBox_2.Value;
            switch value
                case 1
                    temp = "TSFC";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: ThrustreqT_RCheckBox
        function ThrustreqT_RCheckBoxValueChanged(app, event)
            value = app.ThrustreqT_RCheckBox.Value;
            switch value
                case 1
                    temp = "T_R";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: VelocityVCheckBox
        function VelocityVCheckBoxValueChanged(app, event)
            value = app.VelocityVCheckBox.Value;
            switch value
                case 1
                    temp = "V";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end 
        end

        % Value changed function: EquintairspeedV_EASCheckBox
        function EquintairspeedV_EASCheckBoxValueChanged(app, event)
            value = app.EquintairspeedV_EASCheckBox.Value;
            switch value
                case 1
                    temp = "V_EAS";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end  
        end

        % Value changed function: V_infCheckBox
        function V_infCheckBoxValueChanged(app, event)
            value = app.V_infCheckBox.Value;
            switch value
                case 1
                    temp = "V_inf";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: StallspeedV_stallCheckBox
        function StallspeedV_stallCheckBoxValueChanged(app, event)
            value = app.StallspeedV_stallCheckBox.Value;
            switch value
                case 1
                    temp = "V_stall";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                      
        end

        % Value changed function: WeightWCheckBox
        function WeightWCheckBoxValueChanged(app, event)
            value = app.WeightWCheckBox.Value;
            switch value
                case 1
                    temp = "W";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                                   
        end

        % Value changed function: FuelweightW_0CheckBox
        function FuelweightW_0CheckBoxValueChanged(app, event)
            value = app.FuelweightW_0CheckBox.Value;
            switch value
                case 1
                    temp = "W_0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: FuelweightW_1CheckBox
        function FuelweightW_1CheckBoxValueChanged(app, event)
            value = app.FuelweightW_1CheckBox.Value;
            switch value
                case 1
                    temp = "W_1";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                                   
        end

        % Value changed function: AlphaCheckBox
        function AlphaCheckBoxValueChanged(app, event)
            value = app.AlphaCheckBox.Value;
            switch value
                case 1
                    temp = "alpha";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                       
        end

        % Value changed function: WingspanbCheckBox
        function WingspanbCheckBoxValueChanged(app, event)
            value = app.WingspanbCheckBox.Value;
            switch value
                case 1
                    temp = "b";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                                   
        end

        % Value changed function: BreakHPbhpCheckBox
        function BreakHPbhpCheckBoxValueChanged(app, event)
            value = app.BreakHPbhpCheckBox.Value;
            switch value
                case 1
                    temp = "bhp";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: SFCcCheckBox
        function SFCcCheckBoxValueChanged(app, event)
            value = app.SFCcCheckBox.Value;
            switch value
                case 1
                    temp = "c";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Callback function
        function CheckBoxValueChanged(app, event)
            value = app.CheckBox.Value;
             %REMOVE                   
        end

        % Value changed function: DispofcylinderdCheckBox
        function DispofcylinderdCheckBoxValueChanged(app, event)
            value = app.DispofcylinderdCheckBox.Value;
            switch value
                case 1
                    temp = "d";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end   
        end

        % Value changed function: DeltaCheckBox
        function DeltaCheckBoxValueChanged(app, event)
            value = app.DeltaCheckBox.Value;
            switch value
                case 1
                    temp = "delta";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end   
        end

        % Value changed function: EfficiencyfactoreCheckBox_2
        function EfficiencyfactoreCheckBox_2ValueChanged(app, event)
            value = app.EfficiencyfactoreCheckBox_2.Value;
            switch value
                case 1
                    temp = "e";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end            
        end

        % Value changed function: EfficiencyetaCheckBox
        function EfficiencyetaCheckBoxValueChanged(app, event)
            value = app.EfficiencyetaCheckBox.Value;
            switch value
                case 1
                    temp = "eta";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: Maxloadfactorn_maxCheckBox
        function Maxloadfactorn_maxCheckBoxValueChanged(app, event)
            value = app.Maxloadfactorn_maxCheckBox.Value;
            switch value
                case 1
                    temp = "n_max";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: WgoffuelCheckBox
        function WgoffuelCheckBoxValueChanged(app, event)
            value = app.WgoffuelCheckBox.Value;
            switch value
                case 1
                    temp = "fuel";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                     
        end

        % Value changed function: FuelflowCheckBox
        function FuelflowCheckBoxValueChanged(app, event)
            value = app.FuelflowCheckBox.Value;
            switch value
                case 1
                    temp = "fuelflow";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: AccduetogravitygCheckBox
        function AccduetogravitygCheckBoxValueChanged(app, event)
            value = app.AccduetogravitygCheckBox.Value;
            switch value
                case 1
                    temp = "g";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                 
        end

        % Value changed function: AccatMSLg_0CheckBox
        function AccatMSLg_0CheckBoxValueChanged(app, event)
            value = app.AccatMSLg_0CheckBox.Value;
            switch value
                case 1
                    temp = "g_0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: HeighthCheckBox
        function HeighthCheckBoxValueChanged(app, event)
            value = app.HeighthCheckBox.Value;
            switch value
                case 1
                    temp = "h";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end               
        end

        % Value changed function: Geomalth_GCheckBox
        function Geomalth_GCheckBoxValueChanged(app, event)
            value = app.Geomalth_GCheckBox.Value;
            switch value
                case 1
                    temp = "h_G";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end               
        end

        % Value changed function: MassmCheckBox
        function MassmCheckBoxValueChanged(app, event)
            value = app.MassmCheckBox.Value;
            switch value
                case 1
                    temp = "m";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end               
        end

        % Value changed function: CoeffoffricplanesurfaceCheckBox
        function CoeffoffricplanesurfaceCheckBoxValueChanged(app, event)
            value = app.CoeffoffricplanesurfaceCheckBox.Value;
            switch value
                case 1
                    temp = "mu_r";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: LoadfactornCheckBox_2
        function LoadfactornCheckBox_2ValueChanged(app, event)
            value = app.LoadfactornCheckBox_2.Value;
             switch value
                case 1
                    temp = "n";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: TotalpressurepCheckBox
        function TotalpressurepCheckBoxValueChanged(app, event)
            value = app.TotalpressurepCheckBox.Value;
            switch value
                case 1
                    temp = "p";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: staticpressurep_0CheckBox
        function staticpressurep_0CheckBoxValueChanged(app, event)
            value = app.staticpressurep_0CheckBox.Value;
            switch value
                case 1
                    temp = "p_0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: Meaneffpressp_eCheckBox
        function Meaneffpressp_eCheckBoxValueChanged(app, event)
            value = app.Meaneffpressp_eCheckBox.Value;
            switch value
                case 1
                    temp = "p_e";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                 
        end

        % Value changed function: DynamicpressureqCheckBox
        function DynamicpressureqCheckBoxValueChanged(app, event)
            value = app.DynamicpressureqCheckBox.Value;
            switch value
                case 1
                    temp = "q";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end               
        end

        % Value changed function: Dynamicpressureq_infCheckBox
        function Dynamicpressureq_infCheckBoxValueChanged(app, event)
            value = app.Dynamicpressureq_infCheckBox.Value;
            switch value
                case 1
                    temp = "q_inf";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: RadiusofearthrCheckBox
        function RadiusofearthrCheckBoxValueChanged(app, event)
            value = app.RadiusofearthrCheckBox.Value;
            switch value
                case 1
                    temp = "r";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: DensityrhoCheckBox
        function DensityrhoCheckBoxValueChanged(app, event)
            value = app.DensityrhoCheckBox.Value;
            switch value
                case 1
                    temp = "rho";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end             
        end

        % Value changed function: Meansealvlpressrho_0CheckBox
        function Meansealvlpressrho_0CheckBoxValueChanged(app, event)
            value = app.Meansealvlpressrho_0CheckBox.Value;
             switch value
                case 1
                    temp = "rho_0";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end              
        end

        % Value changed function: Freestreamdensityrho_infCheckBox
        function Freestreamdensityrho_infCheckBoxValueChanged(app, event)
            value = app.Freestreamdensityrho_infCheckBox.Value;
            switch value
                case 1
                    temp = "rho_inf";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end               
        end

        % Value changed function: ThetaCheckBox
        function ThetaCheckBoxValueChanged(app, event)
            value = app.ThetaCheckBox.Value;
            switch value
                case 1
                    temp = "theta";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                 
        end

        % Value changed function: TimeCheckBox
        function TimeCheckBoxValueChanged(app, event)
            value = app.TimeCheckBox.Value;
            switch value
                case 1
                    temp = "time";
                    app.user_input = horzcat(app.user_input,temp);
                case 0
            end                 
        end

        % Value changed function: CoeffofdragC_DCheckBox
        function CoeffofdragC_DCheckBoxValueChanged(app, event)
            value = app.CoeffofdragC_DCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_D";
                case 0
            end             
        end

        % Value changed function: CoeffofliftC_LCheckBox
        function CoeffofliftC_LCheckBoxValueChanged(app, event)
            value = app.CoeffofliftC_LCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_L";
                case 0
            end              
        end

        % Value changed function: DragpolarC_dCheckBox
        function DragpolarC_dCheckBoxValueChanged(app, event)
            value = app.DragpolarC_dCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_d";
                case 0
            end              
        end

        % Value changed function: TotaldragcoeffC_dtCheckBox
        function TotaldragcoeffC_dtCheckBoxValueChanged(app, event)
            value = app.TotaldragcoeffC_dtCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_d(Total)";
                case 0
            end              
        end

        % Value changed function: InduceddragcoeffC_diCheckBox
        function InduceddragcoeffC_diCheckBoxValueChanged(app, event)
            value = app.InduceddragcoeffC_diCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_d,i";
                case 0
            end            
        end

        % Value changed function: liftdragcoeffC_d0CheckBox
        function liftdragcoeffC_d0CheckBoxValueChanged(app, event)
            value = app.liftdragcoeffC_d0CheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_d0";
                case 0
            end             
        end

        % Value changed function: SkinfricdragcoeffC_dfCheckBox
        function SkinfricdragcoeffC_dfCheckBoxValueChanged(app, event)
            value = app.SkinfricdragcoeffC_dfCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "C_df";
                case 0
            end             
        end

        % Value changed function: CoeffofwavedragCheckBox
        function CoeffofwavedragCheckBoxValueChanged(app, event)
            value = app.CoeffofwavedragCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Coefficient of Wave Drag";
                case 0
            end              
        end

        % Value changed function: DragDCheckBox
        function DragDCheckBoxValueChanged(app, event)
            value = app.DragDCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "D";
                case 0
            end             
        end

        % Value changed function: LiftLCheckBox
        function LiftLCheckBoxValueChanged(app, event)
            value = app.LiftLCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "L";
                case 0
            end             
        end

        % Value changed function: LDratioCheckBox
        function LDratioCheckBoxValueChanged(app, event)
            value = app.LDratioCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "L/D";
                case 0
            end                
        end

        % Value changed function: LDmaxratioCheckBox
        function LDmaxratioCheckBoxValueChanged(app, event)
            value = app.LDmaxratioCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "L/D max";
                case 0
            end   
        end

        % Value changed function: C_flaminarflowCheckBox
        function C_flaminarflowCheckBoxValueChanged(app, event)
            value = app.C_flaminarflowCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Laminar Flow (C_f)";
                case 0
            end             
        end

        % Value changed function: C_fturbulantflowCheckBox
        function C_fturbulantflowCheckBoxValueChanged(app, event)
            value = app.C_fturbulantflowCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Turbulent Flow (C_f)";
                case 0
            end            
            
        end

        % Value changed function: AccduetogravitygCheckBox_2
        function AccduetogravitygCheckBox_2ValueChanged(app, event)
            value = app.AccduetogravitygCheckBox_2.Value;
            switch value
                case 1
                    app.formula_tfind = "g";
                case 0
            end              
        end

        % Value changed function: TakeofflandingperfsCheckBox
        function TakeofflandingperfsCheckBoxValueChanged(app, event)
            value = app.TakeofflandingperfsCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "s";
                case 0
            end  
        end

        % Value changed function: RangeRCheckBox
        function RangeRCheckBoxValueChanged(app, event)
            value = app.RangeRCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "R";
                case 0
            end             
        end

        % Value changed function: RangemaxR_maxCheckBox
        function RangemaxR_maxCheckBoxValueChanged(app, event)
            value = app.RangemaxR_maxCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "R_max";
                case 0
            end             
        end

        % Value changed function: ForceinlevelturnCheckBox
        function ForceinlevelturnCheckBoxValueChanged(app, event)
            value = app.ForceinlevelturnCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Resultant Force in Level Turn";
                case 0
            end
        end

        % Value changed function: ForceinpulldownCheckBox
        function ForceinpulldownCheckBoxValueChanged(app, event)
            value = app.ForceinpulldownCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Resultant Force in Pull Down";
                case 0
            end             
        end

        % Value changed function: ForceinpullupCheckBox
        function ForceinpullupCheckBoxValueChanged(app, event)
            value = app.ForceinpullupCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Resultant Force in Pull Up";
                case 0
            end            
        end

        % Value changed function: PowerproducedPCheckBox
        function PowerproducedPCheckBoxValueChanged(app, event)
            value = app.PowerproducedPCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "P";
                case 0
            end            
        end

        % Value changed function: PowerrequiredP_RCheckBox
        function PowerrequiredP_RCheckBoxValueChanged(app, event)
            value = app.PowerrequiredP_RCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "P_R";
                case 0
            end               
        end

        % Value changed function: ThrustrequiredT_RCheckBox
        function ThrustrequiredT_RCheckBoxValueChanged(app, event)
            value = app.ThrustrequiredT_RCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "T_R";
                case 0
            end             
        end

        % Value changed function: SFCCheckBox
        function SFCCheckBoxValueChanged(app, event)
            value = app.SFCCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "SFC";
                case 0
            end             
        end

        % Value changed function: TSFCCheckBox
        function TSFCCheckBoxValueChanged(app, event)
            value = app.TSFCCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "TSFC";
                case 0
            end 
        end

        % Value changed function: EfficiencyfactoreCheckBox
        function EfficiencyfactoreCheckBoxValueChanged(app, event)
            value = app.EfficiencyfactoreCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "e";
                case 0
            end            
        end

        % Value changed function: KCheckBox
        function KCheckBoxValueChanged(app, event)
            value = app.KCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "K";
                case 0
            end            
        end

        % Value changed function: TurnrateCheckBox
        function TurnrateCheckBoxValueChanged(app, event)
            value = app.TurnrateCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Turn Rate";
                case 0
            end            
            
        end

        % Value changed function: MinimumradiusR_minCheckBox
        function MinimumradiusR_minCheckBoxValueChanged(app, event)
            value = app.MinimumradiusR_minCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "R_min";
                case 0
            end            
        end

        % Value changed function: FoSVelocityVCheckBox
        function FoSVelocityVCheckBoxValueChanged(app, event)
            value = app.FoSVelocityVCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "V";
                case 0
            end               
        end

        % Value changed function: TrueairspeedV_TASCheckBox
        function TrueairspeedV_TASCheckBoxValueChanged(app, event)
            value = app.TrueairspeedV_TASCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "V_TAS";
                case 0
            end            
        end

        % Value changed function: FlightvelocityV_fCheckBox
        function FlightvelocityV_fCheckBoxValueChanged(app, event)
            value = app.FlightvelocityV_fCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "V_f";
                case 0
            end             
        end

        % Value changed function: StallSpeedV_stallCheckBox
        function StallSpeedV_stallCheckBoxValueChanged(app, event)
            value = app.StallSpeedV_stallCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "V_stall";
                case 0
            end             
        end

        % Value changed function: CornervelocityCheckBox
        function CornervelocityCheckBoxValueChanged(app, event)
            value = app.CornervelocityCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "Corner Velocity";
                case 0
            end
        end

        % Value changed function: WingLoadingWSCheckBox
        function WingLoadingWSCheckBoxValueChanged(app, event)
            value = app.WingLoadingWSCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "W/S";
                case 0
            end             
        end

        % Value changed function: EnduranceECheckBox
        function EnduranceECheckBoxValueChanged(app, event)
            value = app.EnduranceECheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "E";
                case 0
            end               
        end

        % Value changed function: AspectratioARCheckBox
        function AspectratioARCheckBoxValueChanged(app, event)
            value = app.AspectratioARCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "AR";
                case 0
            end            
        end

        % Value changed function: LoadfactornCheckBox
        function LoadfactornCheckBoxValueChanged(app, event)
            value = app.LoadfactornCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "n";
                case 0
            end                
        end

        % Value changed function: ForceonplaneFCheckBox
        function ForceonplaneFCheckBoxValueChanged(app, event)
            value = app.ForceonplaneFCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "F";
                case 0
            end 
        end

        % Value changed function: DynamicPressureq_infCheckBox
        function DynamicPressureq_infCheckBoxValueChanged(app, event)
            value = app.DynamicPressureq_infCheckBox.Value;
            switch value
                case 1
                    app.formula_tfind = "q_inf";
                case 0
            end  
        end

        % Value changed function: ThetaCheckBox_2
        function ThetaCheckBox_2ValueChanged(app, event)
            value = app.ThetaCheckBox_2.Value;
            switch value
                case 1
                    app.formula_tfind = "theta";
                case 0
            end              
        end

        % Button pushed function: HelpButton
        function HelpButtonPushed(app, event)
            % path to documentation
        end

        % Button pushed function: ComputeButton
        function ComputeButtonPushed(app, event)
        datasheet = [
    "C_L", "rho", "V", "S", nan, nan, nan, nan, "Lift (L) = (1/2)*C_L*rho*V^2*S", "L", "4"; 
    "C_D", "rho", "V", "S", nan, nan, nan, nan, "Drag (D) = (1/2)*C_D*rho*V^2*S", "D", "4";
    "L", "S", "q", nan, nan, nan, nan, nan, "Lift Coefficient (C_L) = (L/S)/q", "C_L", "3";
    "D", "S", "q", nan, nan, nan, nan, nan, "Drag Coefficient (C_D) = (D/S)/q", "C_D", "3";
    "W", "q_inf", "S", nan, nan, nan, nan, nan, "Lift Coefficient (C_L) = (W/q_inf*S)", "C_L", "3";
    "C_L", "e", "AR", nan, nan, nan, nan, nan, "Induced Drag Coefficient (C_d,i) = (C_L^2)/pi*e*AR", "C_d,i", "3";
    "C_df", "C_dp", "C_dw", nan, nan, nan, nan, nan, "Total Drag Coefficient (C_d(Total)) = C_df+C_dp+C_dw", "C_d(Total)", "3";
    "alpha", "M_inf", nan, nan, nan, nan, nan, nan, "Coefficient of Wave Drag = (4*alpha^2)/sqrt(M_inf^2-1)", "Coefficient of Wave Drag", "2";
    "b", "S", nan, nan, nan, nan, nan, nan, "Aspect Ratio (AR) = b^2/S", "AR", "2";
    "e", "AR", nan, nan, nan, nan, nan, nan, "Induced Drag Factor (K) = 1/pi*e*AR", "K", "2";
    "fuel", "bhp", "time", nan, nan, nan, nan, nan, "Specific Fuel Consumption (c)(SFC) = lb of fuel/(bhp)(time)", "SFC", "3";
    "fuelflow", "T", nan, nan, nan, nan, nan, nan, "Thrust Specific Fuel Consumption (TSFC) = (Fuel Flow rate in Newton per Hour)/Thrust", "TSFC", "2";
    "eta", "c", "C_L", "C_D", "W_0", "W_1", nan, nan "Range (R) = (eta/c)(C_L/C_D)*ln(W_0/W_1)", "R", "6";
    "TSFC", "rho_inf", "S", "C_L", "C_D", "W_0", "W_1", nan, "Range (R) = (2/TSFC)*sqrt(2/rho_inf*S)*((C_L^1/2)/C_D)*(sqrt(W_0)-sqrt(W_1))", "R", "7";
    "theta", nan, nan, nan, nan, nan, nan, nan "Range (R) = h/tan(theta)", "R", "1";
    "h", "L", "D", nan, nan, nan, nan, nan, "Range (R) = h*(L/D)", "R", "3";
    "h", "C_L/C_D max", nan, nan, nan, nan, nan, nan, "Maximum Range (R_max) = h(C_L/C_D max)", "R_max", "2";
    "eta", "c", "C_L", "C_D", "W_0", "W_1", "rho", "S", "Endurance (E) = (eta/c)(C_L^(3/2)/C_D)*sqrt(2*rho*S)*ln(W_0/W_1)", "E", "8";
    "L", "W", nan, nan, nan, nan, nan, nan, "Load Factor (n) = L/W", "n", "2";
    "W", "S", nan, nan, nan, nan, nan, nan, "Wing Loading = W/S", "W/S", "2"; 
    "W", "n", nan, nan, nan, nan, nan, nan, "Resultant Force in Level Turn = W*sqrt(n^2-1)", "Resultant Force in Level Turn", "2";
    "L", "W", nan, nan, nan, nan, nan, nan, "Resultant Force in Pull Up = L-W", "Resultant Force in Pull Up", "2";
    "L", "W", nan, nan, nan, nan, nan, nan, "Resultant Force in Pull Down = L+W", "Resultant Force in Pull Down", "2";
    "V_inf", "R", nan, nan, nan, nan, nan, nan, "Turn Rate (omega) = V_inf/R", "Turn Rate", "2";
    "n_max", "W", "S", "rho_inf", "C_L max", nan, nan, nan, "Corner Velocity (v*) = sqrt(2*n_max(W/S)/rho_inf*C_L max)", "Corner Velocity","5";
    "Re", nan, nan, nan, nan, nan, nan, nan, "Skin friction for Laminar Flow (c_f) = 1.328/sqrt(Re)", "Laminar Flow (C_f)", "1";
    "Re", nan, nan, nan, nan, nan, nan, nan, "Skin friction for Turbulent Flow (c_f) = 0.43/ln^2(0.056*Re)", "Turbulent Flow (C_f)", "1";
    "D_f", "rho", "V_inf", "S_ref", nan, nan, nan, nan, "Skin friction Drag Coefficient (C_df) = 2*D_f/rho*V_inf^2*S_ref", "C_df", "4";
    "C_f", "S_ref", "S_wet", nan, nan, nan, nan, nan "Skin friction Drag Coefficient (C_df) = C_f(S_wet/S_ref)", "C_df", "3";
    "delta", nan, nan, nan, nan, nan, nan, nan, "Ostwald's Efficiency Factor (e) = 1/(1+delta)", "e", "1";
    "D_0", "q_inf", "S", nan, nan, nan, nan, nan, "Zero Lift Drag Coefficient (C_d0) = D_0/qinf*S", "C_d0", "3";
    "S_wet", "S", "C_f", nan, nan, nan, nan, nan, "Zero Lift Drag Coefficient (C_d0) = (S_wet/S)*C_f", "C_d0", "3"; 
    "C_d0", "K", "C_L", nan, nan, nan, nan, nan, "Drag Polar (C_d) = C_d0 + K*C_L^2", "C_d","3";
    "D", "mu_r", "W", "L", nan, nan, nan, nan, "Force acting on the aircraft (F) = -D-mu_r(W-L)", "F", "4";
    "V", "m", "F", nan, nan, nan, nan, nan, "Take off Performance (s) = V^2*m/2*F", "s", "3";
    "V", "m", "F", nan, nan, nan, nan, nan, "Landing Performance (s) = -V^2*m/2*F", "s", "3";
    "W", "C_L max", "rho", "S",  nan, nan, nan, nan,"Stall Speed (V_stall) = sqrt(w/(1/2)C_Lmax*rho*S)", "V_stall", "4";
    "V_stall", nan, nan, nan, nan, nan, nan, nan, "Factor of Safety in Takeoff (V) = 1.15*V_stall", "V", "1";
    "V_stall", nan, nan, nan, nan, nan, nan, nan, "Factor of Safety in Landing (V) = 1.3*V_stall", "V", "1";
    "C_L", "C_D", nan, nan, nan, nan, nan, nan, "Lift to Drag Ratio (L/D) = C_L/C_D", "L/D", "2";
    "e", "AR", "C_d0", nan, nan, nan, nan, nan, "Lift to Drag Ratio Max. (L/D max) = (1/2)*sqrt((pi*e*AR/C_d0))", "L/D max", "3";
    "C_d0", "K", nan, nan, nan, nan, nan, nan, "Lift to Drag Ratio Max. (L/D max) = 1/sqrt(4*C_d0*K)", "L/D max", "2";
    "g_0", "r", "h_G", nan, nan, nan, nan, nan, "Gravitational Acceleration (g) = g_0(r/r+h_G)", "g", "3";
    "d", "p_e", "RPM", nan, nan, nan, nan, nan, "Power produced by Four-stroke Engine (P) = d*p_e*RPM", "P", "3";
    "V_EAS", "rho", "rho_0", nan, nan, nan, nan, nan, "True Air Speed (V_TAS) = V_EAS*sqrt(rho_0/rho)", "V_TAS", "3";
    "p_0", "p", "rho", nan, nan, nan, nan, nan, "True Air Speed (V_TAS) = sqrt(2*(p_0-p)/rho)", "V_TAS", "3";
    "W", "L", "D", nan, nan, nan, nan, nan, "Thrust Required (T_R) = W/(L/D)", "T_R", "3";
    "T_R", "V_inf", nan, nan, nan, nan, nan, nan, "Power Required (P_R) = T_R*V_inf", "P_R", "2";
    "W", "C_D", "rho_inf", "S", "C_L", nan, nan, nan, "Power Required (P_R) = sqrt((2*W^3*C_D^2)/(rho_inf*S*C_L^3)", "P_R","5";
    "K", "W", "S", "g", "rho_inf", "T", "C_d0", "T", "Minimum Radius (R_min) = (4*K(W/S))/(g*rho_inf*(T/W)sqrt(1-4*K*C_d0/(T/W)^2))", "R_min", "8";
    "theta", "rho_inf", "C_L", "W", "S", nan, nan, nan "Flight Velocity (V_f) = sqrt((2*cos(theta)/rho_inf*C_L)(W/S))", "V_f", "5";
    "L", "D", nan, nan, nan, nan, nan, nan, "Theta (theta) = arctan(1/(L/D))", "theta", "2";
    "rho_inf", "V_inf", nan, nan, nan, nan, nan, nan, "Dynamic Pressure (q_inf) = (1/2)*rho_inf*V_inf^2", "q_inf", "2";
    ];

        [n, ~] = size(datasheet);

            max = 0;
            for i=1:n
                if app.formula_tfind == datasheet(i,end-1)
                    check_var = ismember(app.user_input,datasheet(i,:));
                    sum_log = double(sum(check_var(1,:)));
                    temp = sum_log;
                    temp_no = str2double(datasheet(i,end));
                    if temp > max
                        max = temp;
                        store_tformula = datasheet(i,end-1);
                        for j = 1:temp_no
                            app.variables_listed = horzcat(app.variables_listed,datasheet(i,j));
                        end
                    else
                    end
                end 
            end

            app.variables_tfind = setdiff(app.variables_listed,app.user_input);
            check_empty = isempty(app.variables_tfind);
            store_tformula = [];
            if check_empty == false
                max = 0;
                len = length(app.variables_tfind);
                for i=1:len
                    for j=1:n
                        if app.variables_tfind(i) == datasheet(j,end-1)
                            check_var = ismember(app.user_input,datasheet(j,:));
                            sum_log = double(sum(check_var(1,:)));
                            temp = sum_log;
                            if temp > max
                                max = temp;
                                store_tformula = datasheet(j,end-2);
                            else
                            end
                        else
                        end
                    end
                end
                app.formula_append = vertcat(app.formula_append,store_tformula);
                
                max = 0;
                store_tformula = [];
                for i=1:n
                    if datasheet(i,end-1) == app.formula_tfind
                        check_var = ismember(app.user_input,datasheet(i,:));
                        sum_log = double(sum(check_var(1,:)));
                        temp = sum_log;
                        if temp > max
                            max = temp;
                            store_tformula = datasheet(i,end-2);
                        else
                        end
                    end
                end
                app.formula_append = vertcat(app.formula_append,store_tformula);
                app.VariablesrequiredtosolveTextArea.Value = app.variables_tfind;
            elseif check_empty == true
                max = 0;  %check
                for i=1:n
                    check_no = str2double(datasheet(i,end));
                    check_var = ismember(datasheet(i,:),app.formula_tfind); %app.user_input
                    sum_log = double(sum(check_var(1,:)));
                    if check_no == sum_log
                        store_tformula = datasheet(i,end-2);
                        app.formula_append = vertcat(app.formula_append,store_tformula);
                    else
                        if app.formula_tfind == datasheet(i,end-1)
                            check_var = ismember(app.user_input,datasheet(i,:));
                            sum_log = double(sum(check_var(1,:)));
                            temp = sum_log;
                            if temp > max
                                max = temp;
                                store_tformula = datasheet(i,end-2);
                            else
                            end
                        end
                    end
                end
                app.formula_append = vertcat(app.formula_append,store_tformula); % check
            else
            end
            
            app.FormulaTextArea.Value = app.formula_append;        
        end

        % Button pushed function: ResetButton
        function ResetButtonPushed(app, event)
            app.TimeCheckBox.Value = false;
            app.ThetaCheckBox.Value = false;
            app.Meansealvlpressrho_0CheckBox.Value = false;
            app.Freestreamdensityrho_infCheckBox.Value = false;
            app.DensityrhoCheckBox.Value = false;
            app.RadiusofearthrCheckBox.Value = false;
            app.Dynamicpressureq_infCheckBox.Value = false;
            app.DynamicpressureqCheckBox.Value = false;
            app.Meaneffpressp_eCheckBox.Value = false;
            app.staticpressurep_0CheckBox.Value = false;
            app.TotalpressurepCheckBox.Value = false;
            app.LoadfactornCheckBox_2.Value = false;
            app.CoeffoffricplanesurfaceCheckBox.Value = false;
            app.MassmCheckBox.Value = false;
            app.Geomalth_GCheckBox.Value = false;
            app.HeighthCheckBox.Value = false;
            app.AccatMSLg_0CheckBox.Value = false;
            app.AccduetogravitygCheckBox.Value = false;
            app.FuelflowCheckBox.Value = false;
            app.WgoffuelCheckBox.Value = false;
            app.Maxloadfactorn_maxCheckBox.Value = false;
            app.EfficiencyetaCheckBox.Value = false;
            app.EfficiencyfactoreCheckBox_2.Value = false;
            app.DeltaCheckBox.Value = false;
            app.DispofcylinderdCheckBox.Value = false;
            app.SFCcCheckBox.Value = false;
            app.BreakHPbhpCheckBox.Value = false;
            app.WingspanbCheckBox.Value = false;
            app.AlphaCheckBox.Value = false;
            app.FuelweightW_1CheckBox.Value = false;
            app.FuelweightW_0CheckBox.Value = false;
            app.WeightWCheckBox.Value = false;
            app.StallspeedV_stallCheckBox.Value = false;
            app.V_infCheckBox.Value = false;
            app.EquintairspeedV_EASCheckBox.Value = false;
            app.VelocityVCheckBox.Value = false;
            app.ThrustreqT_RCheckBox.Value = false;
            app.TSFCCheckBox_2.Value = false;
            app.ThrustTCheckBox.Value = false;
            app.RefsurfareaS_refCheckBox.Value = false;
            app.WetsurfareaS_wetCheckBox.Value = false;
            app.SurfaceareaSCheckBox.Value = false;
            app.ReynoldsnoReCheckBox.Value = false;
            app.RPMCheckBox.Value = false;
            app.RangeRCheckBox_2.Value = false;
            app.MachnoM_infCheckBox.Value = false;
            app.LiftLCheckBox_2.Value = false;
            app.C_LC_DmaxCheckBox.Value = false;
            app.KCheckBox_2.Value = false;
            app.ForceFCheckBox.Value = false;
            app.SkindricdragD_fCheckBox.Value = false;
            app.liftdragcoeffC_d0CheckBox_3.Value = false;
            app.DragDCheckBox_2.Value = false;
            app.SkinfriccoeffC_fCheckBox.Value = false;
            app.WavedragcoeffC_dwCheckBox.Value = false;
            app.PressdragcoeffC_dpCheckBox.Value = false;
            app.SkinfricdragcoeffC_dfCheckBox_2.Value = false;
            app.liftdragcoeffC_d0CheckBox_2.Value = false;
            app.CoeffofliftC_LmaxCheckBox.Value = false;
            app.CoeffofliftC_LCheckBox_2.Value = false;
            app.CoeffofdragC_DCheckBox_2.Value = false;
            app.AspectratioARCheckBox_2.Value = false;

            app.ThetaCheckBox_2.Value = false;
            app.TakeofflandingperfsCheckBox.Value = false;
            app.DynamicPressureq_infCheckBox.Value = false;
            app.LoadfactornCheckBox.Value = false;
            app.AccduetogravitygCheckBox_2.Value = false;
            app.EfficiencyfactoreCheckBox.Value = false;
            app.LiftLCheckBox.Value = false;
            app.WingLoadingWSCheckBox.Value = false;
            app.StallSpeedV_stallCheckBox.Value = false;
            app.FlightvelocityV_fCheckBox.Value = false;
            app.TrueairspeedV_TASCheckBox.Value = false;
            app.FoSVelocityVCheckBox.Value = false;
            app.TurnrateCheckBox.Value = false;
            app.ThrustrequiredT_RCheckBox.Value = false;
            app.TSFCCheckBox.Value = false;
            app.SFCCheckBox.Value = false;
            app.ForceinpullupCheckBox.Value = false;
            app.ForceinpulldownCheckBox.Value = false;
            app.ForceinlevelturnCheckBox.Value = false;
            app.RangemaxR_maxCheckBox.Value = false;
            app.MinimumradiusR_minCheckBox.Value = false;
            app.RangeRCheckBox.Value = false;
            app.PowerrequiredP_RCheckBox.Value = false;
            app.PowerproducedPCheckBox.Value = false;
            app.C_fturbulantflowCheckBox.Value = false;
            app.C_flaminarflowCheckBox.Value = false;
            app.LDmaxratioCheckBox.Value = false;
            app.LDratioCheckBox.Value = false;
            app.KCheckBox.Value = false;
            app.ForceonplaneFCheckBox.Value = false;
            app.EnduranceECheckBox.Value = false;
            app.DragDCheckBox.Value = false;
            app.CornervelocityCheckBox.Value = false;
            app.CoeffofwavedragCheckBox.Value = false;
            app.SkinfricdragcoeffC_dfCheckBox.Value = false;
            app.liftdragcoeffC_d0CheckBox.Value = false;
            app.InduceddragcoeffC_diCheckBox.Value = false;
            app.TotaldragcoeffC_dtCheckBox.Value = false;
            app.DragpolarC_dCheckBox.Value = false;
            app.CoeffofliftC_LCheckBox.Value = false;
            app.CoeffofdragC_DCheckBox.Value = false;
            app.AspectratioARCheckBox.Value = false;

            app.FormulaTextArea.Value = char.empty;
            app.VariablesrequiredtosolveTextArea.Value = char.empty;
            app.user_input = [];
            app.formula_tfind = [];
            app.formula_append = [];
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1195 590];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [21 299 1160 272];

            % Create VariablesgivenTab
            app.VariablesgivenTab = uitab(app.TabGroup);
            app.VariablesgivenTab.Title = 'Variables given';

            % Create AspectratioARCheckBox_2
            app.AspectratioARCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.AspectratioARCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @AspectratioARCheckBox_2ValueChanged, true);
            app.AspectratioARCheckBox_2.Text = 'Aspect ratio (AR)';
            app.AspectratioARCheckBox_2.Position = [15 200 113 22];

            % Create CoeffofdragC_DCheckBox_2
            app.CoeffofdragC_DCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.CoeffofdragC_DCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @CoeffofdragC_DCheckBox_2ValueChanged, true);
            app.CoeffofdragC_DCheckBox_2.Text = 'Coeff of drag (C_D)';
            app.CoeffofdragC_DCheckBox_2.Position = [15 177 127 22];

            % Create CoeffofliftC_LCheckBox_2
            app.CoeffofliftC_LCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.CoeffofliftC_LCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @CoeffofliftC_LCheckBox_2ValueChanged, true);
            app.CoeffofliftC_LCheckBox_2.Text = 'Coeff of lift (C_L)';
            app.CoeffofliftC_LCheckBox_2.Position = [15 154 112 22];

            % Create CoeffofliftC_LmaxCheckBox
            app.CoeffofliftC_LmaxCheckBox = uicheckbox(app.VariablesgivenTab);
            app.CoeffofliftC_LmaxCheckBox.ValueChangedFcn = createCallbackFcn(app, @CoeffofliftC_LmaxCheckBoxValueChanged, true);
            app.CoeffofliftC_LmaxCheckBox.Text = 'Coeff of lift (C_L max)';
            app.CoeffofliftC_LmaxCheckBox.Position = [15 131 138 22];

            % Create liftdragcoeffC_d0CheckBox_2
            app.liftdragcoeffC_d0CheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.liftdragcoeffC_d0CheckBox_2.ValueChangedFcn = createCallbackFcn(app, @liftdragcoeffC_d0CheckBox_2ValueChanged, true);
            app.liftdragcoeffC_d0CheckBox_2.Text = '0 lift-drag coeff (C_d0)';
            app.liftdragcoeffC_d0CheckBox_2.Position = [15 108 141 22];

            % Create SkinfricdragcoeffC_dfCheckBox_2
            app.SkinfricdragcoeffC_dfCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.SkinfricdragcoeffC_dfCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @SkinfricdragcoeffC_dfCheckBox_2ValueChanged, true);
            app.SkinfricdragcoeffC_dfCheckBox_2.Text = 'Skin-fric drag coeff (C_df)';
            app.SkinfricdragcoeffC_dfCheckBox_2.Position = [15 85 159 22];

            % Create PressdragcoeffC_dpCheckBox
            app.PressdragcoeffC_dpCheckBox = uicheckbox(app.VariablesgivenTab);
            app.PressdragcoeffC_dpCheckBox.ValueChangedFcn = createCallbackFcn(app, @PressdragcoeffC_dpCheckBoxValueChanged, true);
            app.PressdragcoeffC_dpCheckBox.Text = 'Press. drag coeff (C_dp)';
            app.PressdragcoeffC_dpCheckBox.Position = [15 62 152 22];

            % Create WavedragcoeffC_dwCheckBox
            app.WavedragcoeffC_dwCheckBox = uicheckbox(app.VariablesgivenTab);
            app.WavedragcoeffC_dwCheckBox.ValueChangedFcn = createCallbackFcn(app, @WavedragcoeffC_dwCheckBoxValueChanged, true);
            app.WavedragcoeffC_dwCheckBox.Text = 'Wave drag coeff (C_dw)';
            app.WavedragcoeffC_dwCheckBox.Position = [15 39 151 22];

            % Create SkinfriccoeffC_fCheckBox
            app.SkinfriccoeffC_fCheckBox = uicheckbox(app.VariablesgivenTab);
            app.SkinfriccoeffC_fCheckBox.ValueChangedFcn = createCallbackFcn(app, @SkinfriccoeffC_fCheckBoxValueChanged, true);
            app.SkinfriccoeffC_fCheckBox.Text = 'Skin fric. coeff (C_f)';
            app.SkinfriccoeffC_fCheckBox.Position = [15 16 127 22];

            % Create DragDCheckBox_2
            app.DragDCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.DragDCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @DragDCheckBox_2ValueChanged, true);
            app.DragDCheckBox_2.Text = 'Drag (D)';
            app.DragDCheckBox_2.Position = [176 200 68 22];

            % Create liftdragcoeffC_d0CheckBox_3
            app.liftdragcoeffC_d0CheckBox_3 = uicheckbox(app.VariablesgivenTab);
            app.liftdragcoeffC_d0CheckBox_3.ValueChangedFcn = createCallbackFcn(app, @liftdragcoeffC_d0CheckBox_3ValueChanged, true);
            app.liftdragcoeffC_d0CheckBox_3.Text = '0 lift-drag coeff (C_d0)';
            app.liftdragcoeffC_d0CheckBox_3.Position = [176 177 141 22];

            % Create SkindricdragD_fCheckBox
            app.SkindricdragD_fCheckBox = uicheckbox(app.VariablesgivenTab);
            app.SkindricdragD_fCheckBox.ValueChangedFcn = createCallbackFcn(app, @SkindricdragD_fCheckBoxValueChanged, true);
            app.SkindricdragD_fCheckBox.Text = 'Skin dric drag (D_f)';
            app.SkindricdragD_fCheckBox.Position = [176 154 125 22];

            % Create ForceFCheckBox
            app.ForceFCheckBox = uicheckbox(app.VariablesgivenTab);
            app.ForceFCheckBox.ValueChangedFcn = createCallbackFcn(app, @ForceFCheckBoxValueChanged, true);
            app.ForceFCheckBox.Text = 'Force (F)';
            app.ForceFCheckBox.Position = [176 131 71 22];

            % Create KCheckBox_2
            app.KCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.KCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @KCheckBox_2ValueChanged, true);
            app.KCheckBox_2.Text = 'K';
            app.KCheckBox_2.Position = [176 108 30 22];

            % Create C_LC_DmaxCheckBox
            app.C_LC_DmaxCheckBox = uicheckbox(app.VariablesgivenTab);
            app.C_LC_DmaxCheckBox.ValueChangedFcn = createCallbackFcn(app, @C_LC_DmaxCheckBoxValueChanged, true);
            app.C_LC_DmaxCheckBox.Text = '(C_L/C_D) max';
            app.C_LC_DmaxCheckBox.Position = [176 85 105 22];

            % Create LiftLCheckBox_2
            app.LiftLCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.LiftLCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @LiftLCheckBox_2ValueChanged, true);
            app.LiftLCheckBox_2.Text = 'Lift (L)';
            app.LiftLCheckBox_2.Position = [176 62 56 22];

            % Create MachnoM_infCheckBox
            app.MachnoM_infCheckBox = uicheckbox(app.VariablesgivenTab);
            app.MachnoM_infCheckBox.ValueChangedFcn = createCallbackFcn(app, @MachnoM_infCheckBoxValueChanged, true);
            app.MachnoM_infCheckBox.Text = 'Mach no (M_inf)';
            app.MachnoM_infCheckBox.Position = [176 39 109 22];

            % Create RangeRCheckBox_2
            app.RangeRCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.RangeRCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @RangeRCheckBox_2ValueChanged, true);
            app.RangeRCheckBox_2.Text = 'Range (R)';
            app.RangeRCheckBox_2.Position = [176 16 77 22];

            % Create RPMCheckBox
            app.RPMCheckBox = uicheckbox(app.VariablesgivenTab);
            app.RPMCheckBox.ValueChangedFcn = createCallbackFcn(app, @RPMCheckBoxValueChanged, true);
            app.RPMCheckBox.Text = 'RPM';
            app.RPMCheckBox.Position = [329 200 49 22];

            % Create ReynoldsnoReCheckBox
            app.ReynoldsnoReCheckBox = uicheckbox(app.VariablesgivenTab);
            app.ReynoldsnoReCheckBox.ValueChangedFcn = createCallbackFcn(app, @ReynoldsnoReCheckBoxValueChanged, true);
            app.ReynoldsnoReCheckBox.Text = 'Reynolds no (Re)';
            app.ReynoldsnoReCheckBox.Position = [329 177 115 22];

            % Create SurfaceareaSCheckBox
            app.SurfaceareaSCheckBox = uicheckbox(app.VariablesgivenTab);
            app.SurfaceareaSCheckBox.ValueChangedFcn = createCallbackFcn(app, @SurfaceareaSCheckBoxValueChanged, true);
            app.SurfaceareaSCheckBox.Text = 'Surface area (S)';
            app.SurfaceareaSCheckBox.Position = [329 154 110 22];

            % Create WetsurfareaS_wetCheckBox
            app.WetsurfareaS_wetCheckBox = uicheckbox(app.VariablesgivenTab);
            app.WetsurfareaS_wetCheckBox.ValueChangedFcn = createCallbackFcn(app, @WetsurfareaS_wetCheckBoxValueChanged, true);
            app.WetsurfareaS_wetCheckBox.Text = 'Wet surf. area (S_wet)';
            app.WetsurfareaS_wetCheckBox.Position = [329 131 142 22];

            % Create RefsurfareaS_refCheckBox
            app.RefsurfareaS_refCheckBox = uicheckbox(app.VariablesgivenTab);
            app.RefsurfareaS_refCheckBox.ValueChangedFcn = createCallbackFcn(app, @RefsurfareaS_refCheckBoxValueChanged, true);
            app.RefsurfareaS_refCheckBox.Text = 'Ref. surf. area (S_ref)';
            app.RefsurfareaS_refCheckBox.Position = [329 108 138 22];

            % Create ThrustTCheckBox
            app.ThrustTCheckBox = uicheckbox(app.VariablesgivenTab);
            app.ThrustTCheckBox.ValueChangedFcn = createCallbackFcn(app, @ThrustTCheckBoxValueChanged, true);
            app.ThrustTCheckBox.Text = 'Thrust (T)';
            app.ThrustTCheckBox.Position = [329 85 75 22];

            % Create TSFCCheckBox_2
            app.TSFCCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.TSFCCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @TSFCCheckBox_2ValueChanged, true);
            app.TSFCCheckBox_2.Text = 'TSFC';
            app.TSFCCheckBox_2.Position = [329 62 53 22];

            % Create ThrustreqT_RCheckBox
            app.ThrustreqT_RCheckBox = uicheckbox(app.VariablesgivenTab);
            app.ThrustreqT_RCheckBox.ValueChangedFcn = createCallbackFcn(app, @ThrustreqT_RCheckBoxValueChanged, true);
            app.ThrustreqT_RCheckBox.Text = 'Thrust req. (T_R)';
            app.ThrustreqT_RCheckBox.Position = [329 39 114 22];

            % Create VelocityVCheckBox
            app.VelocityVCheckBox = uicheckbox(app.VariablesgivenTab);
            app.VelocityVCheckBox.ValueChangedFcn = createCallbackFcn(app, @VelocityVCheckBoxValueChanged, true);
            app.VelocityVCheckBox.Text = 'Velocity (V)';
            app.VelocityVCheckBox.Position = [329 16 83 22];

            % Create EquintairspeedV_EASCheckBox
            app.EquintairspeedV_EASCheckBox = uicheckbox(app.VariablesgivenTab);
            app.EquintairspeedV_EASCheckBox.ValueChangedFcn = createCallbackFcn(app, @EquintairspeedV_EASCheckBoxValueChanged, true);
            app.EquintairspeedV_EASCheckBox.Text = 'Equint air speed (V_EAS)';
            app.EquintairspeedV_EASCheckBox.Position = [480 200 159 22];

            % Create V_infCheckBox
            app.V_infCheckBox = uicheckbox(app.VariablesgivenTab);
            app.V_infCheckBox.ValueChangedFcn = createCallbackFcn(app, @V_infCheckBoxValueChanged, true);
            app.V_infCheckBox.Text = 'V_inf';
            app.V_infCheckBox.Position = [480 177 93 22];

            % Create StallspeedV_stallCheckBox
            app.StallspeedV_stallCheckBox = uicheckbox(app.VariablesgivenTab);
            app.StallspeedV_stallCheckBox.ValueChangedFcn = createCallbackFcn(app, @StallspeedV_stallCheckBoxValueChanged, true);
            app.StallspeedV_stallCheckBox.Text = 'Stall speed (V_stall)';
            app.StallspeedV_stallCheckBox.Position = [480 154 129 22];

            % Create WeightWCheckBox
            app.WeightWCheckBox = uicheckbox(app.VariablesgivenTab);
            app.WeightWCheckBox.ValueChangedFcn = createCallbackFcn(app, @WeightWCheckBoxValueChanged, true);
            app.WeightWCheckBox.Text = 'Weight (W)';
            app.WeightWCheckBox.Position = [480 131 93 22];

            % Create FuelweightW_0CheckBox
            app.FuelweightW_0CheckBox = uicheckbox(app.VariablesgivenTab);
            app.FuelweightW_0CheckBox.ValueChangedFcn = createCallbackFcn(app, @FuelweightW_0CheckBoxValueChanged, true);
            app.FuelweightW_0CheckBox.Text = 'Fuel weight (W_0)';
            app.FuelweightW_0CheckBox.Position = [480 108 119 22];

            % Create FuelweightW_1CheckBox
            app.FuelweightW_1CheckBox = uicheckbox(app.VariablesgivenTab);
            app.FuelweightW_1CheckBox.ValueChangedFcn = createCallbackFcn(app, @FuelweightW_1CheckBoxValueChanged, true);
            app.FuelweightW_1CheckBox.Text = 'Fuel weight (W_1)';
            app.FuelweightW_1CheckBox.Position = [480 85 119 22];

            % Create AlphaCheckBox
            app.AlphaCheckBox = uicheckbox(app.VariablesgivenTab);
            app.AlphaCheckBox.ValueChangedFcn = createCallbackFcn(app, @AlphaCheckBoxValueChanged, true);
            app.AlphaCheckBox.Text = 'Alpha';
            app.AlphaCheckBox.Position = [480 62 93 22];

            % Create WingspanbCheckBox
            app.WingspanbCheckBox = uicheckbox(app.VariablesgivenTab);
            app.WingspanbCheckBox.ValueChangedFcn = createCallbackFcn(app, @WingspanbCheckBoxValueChanged, true);
            app.WingspanbCheckBox.Text = 'Wing span (b)';
            app.WingspanbCheckBox.Position = [480 39 97 22];

            % Create BreakHPbhpCheckBox
            app.BreakHPbhpCheckBox = uicheckbox(app.VariablesgivenTab);
            app.BreakHPbhpCheckBox.ValueChangedFcn = createCallbackFcn(app, @BreakHPbhpCheckBoxValueChanged, true);
            app.BreakHPbhpCheckBox.Text = 'Break HP (bhp)';
            app.BreakHPbhpCheckBox.Position = [480 16 104 22];

            % Create SFCcCheckBox
            app.SFCcCheckBox = uicheckbox(app.VariablesgivenTab);
            app.SFCcCheckBox.ValueChangedFcn = createCallbackFcn(app, @SFCcCheckBoxValueChanged, true);
            app.SFCcCheckBox.Text = 'SFC (c)';
            app.SFCcCheckBox.Position = [644 200 63 22];

            % Create DispofcylinderdCheckBox
            app.DispofcylinderdCheckBox = uicheckbox(app.VariablesgivenTab);
            app.DispofcylinderdCheckBox.ValueChangedFcn = createCallbackFcn(app, @DispofcylinderdCheckBoxValueChanged, true);
            app.DispofcylinderdCheckBox.Text = 'Disp. of cylinder (d)';
            app.DispofcylinderdCheckBox.Position = [644 177 125 22];

            % Create DeltaCheckBox
            app.DeltaCheckBox = uicheckbox(app.VariablesgivenTab);
            app.DeltaCheckBox.ValueChangedFcn = createCallbackFcn(app, @DeltaCheckBoxValueChanged, true);
            app.DeltaCheckBox.Text = 'Delta';
            app.DeltaCheckBox.Position = [644 154 50 22];

            % Create EfficiencyfactoreCheckBox_2
            app.EfficiencyfactoreCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.EfficiencyfactoreCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @EfficiencyfactoreCheckBox_2ValueChanged, true);
            app.EfficiencyfactoreCheckBox_2.Text = 'Efficiency factor (e)';
            app.EfficiencyfactoreCheckBox_2.Position = [644 131 124 22];

            % Create EfficiencyetaCheckBox
            app.EfficiencyetaCheckBox = uicheckbox(app.VariablesgivenTab);
            app.EfficiencyetaCheckBox.ValueChangedFcn = createCallbackFcn(app, @EfficiencyetaCheckBoxValueChanged, true);
            app.EfficiencyetaCheckBox.Text = 'Efficiency (eta)';
            app.EfficiencyetaCheckBox.Position = [644 108 101 22];

            % Create Maxloadfactorn_maxCheckBox
            app.Maxloadfactorn_maxCheckBox = uicheckbox(app.VariablesgivenTab);
            app.Maxloadfactorn_maxCheckBox.ValueChangedFcn = createCallbackFcn(app, @Maxloadfactorn_maxCheckBoxValueChanged, true);
            app.Maxloadfactorn_maxCheckBox.Text = 'Max load factor (n_max)';
            app.Maxloadfactorn_maxCheckBox.Position = [644 62 151 22];

            % Create WgoffuelCheckBox
            app.WgoffuelCheckBox = uicheckbox(app.VariablesgivenTab);
            app.WgoffuelCheckBox.ValueChangedFcn = createCallbackFcn(app, @WgoffuelCheckBoxValueChanged, true);
            app.WgoffuelCheckBox.Text = 'Wg. of fuel ';
            app.WgoffuelCheckBox.Position = [644 39 83 22];

            % Create FuelflowCheckBox
            app.FuelflowCheckBox = uicheckbox(app.VariablesgivenTab);
            app.FuelflowCheckBox.ValueChangedFcn = createCallbackFcn(app, @FuelflowCheckBoxValueChanged, true);
            app.FuelflowCheckBox.Text = 'Fuel flow';
            app.FuelflowCheckBox.Position = [644 16 70 22];

            % Create AccduetogravitygCheckBox
            app.AccduetogravitygCheckBox = uicheckbox(app.VariablesgivenTab);
            app.AccduetogravitygCheckBox.ValueChangedFcn = createCallbackFcn(app, @AccduetogravitygCheckBoxValueChanged, true);
            app.AccduetogravitygCheckBox.Text = 'Acc. due to gravity (g)';
            app.AccduetogravitygCheckBox.Position = [800 200 139 22];

            % Create AccatMSLg_0CheckBox
            app.AccatMSLg_0CheckBox = uicheckbox(app.VariablesgivenTab);
            app.AccatMSLg_0CheckBox.ValueChangedFcn = createCallbackFcn(app, @AccatMSLg_0CheckBoxValueChanged, true);
            app.AccatMSLg_0CheckBox.Text = 'Acc. at MSL (g_0)';
            app.AccatMSLg_0CheckBox.Position = [979 85 118 22];

            % Create HeighthCheckBox
            app.HeighthCheckBox = uicheckbox(app.VariablesgivenTab);
            app.HeighthCheckBox.ValueChangedFcn = createCallbackFcn(app, @HeighthCheckBoxValueChanged, true);
            app.HeighthCheckBox.Text = 'Height (h)';
            app.HeighthCheckBox.Position = [979 154 75 22];

            % Create MassmCheckBox
            app.MassmCheckBox = uicheckbox(app.VariablesgivenTab);
            app.MassmCheckBox.ValueChangedFcn = createCallbackFcn(app, @MassmCheckBoxValueChanged, true);
            app.MassmCheckBox.Text = 'Mass (m)';
            app.MassmCheckBox.Position = [979 177 72 22];

            % Create CoeffoffricplanesurfaceCheckBox
            app.CoeffoffricplanesurfaceCheckBox = uicheckbox(app.VariablesgivenTab);
            app.CoeffoffricplanesurfaceCheckBox.ValueChangedFcn = createCallbackFcn(app, @CoeffoffricplanesurfaceCheckBoxValueChanged, true);
            app.CoeffoffricplanesurfaceCheckBox.Text = 'Coeff. of fric. plane-surface';
            app.CoeffoffricplanesurfaceCheckBox.Position = [979 200 166 22];

            % Create LoadfactornCheckBox_2
            app.LoadfactornCheckBox_2 = uicheckbox(app.VariablesgivenTab);
            app.LoadfactornCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @LoadfactornCheckBox_2ValueChanged, true);
            app.LoadfactornCheckBox_2.Text = 'Load factor (n)';
            app.LoadfactornCheckBox_2.Position = [644 85 100 22];

            % Create TotalpressurepCheckBox
            app.TotalpressurepCheckBox = uicheckbox(app.VariablesgivenTab);
            app.TotalpressurepCheckBox.ValueChangedFcn = createCallbackFcn(app, @TotalpressurepCheckBoxValueChanged, true);
            app.TotalpressurepCheckBox.Text = 'Total pressure (p)';
            app.TotalpressurepCheckBox.Position = [800 39 115 22];

            % Create staticpressurep_0CheckBox
            app.staticpressurep_0CheckBox = uicheckbox(app.VariablesgivenTab);
            app.staticpressurep_0CheckBox.ValueChangedFcn = createCallbackFcn(app, @staticpressurep_0CheckBoxValueChanged, true);
            app.staticpressurep_0CheckBox.Text = 'static pressure (p_0)';
            app.staticpressurep_0CheckBox.Position = [800 16 131 22];

            % Create Meaneffpressp_eCheckBox
            app.Meaneffpressp_eCheckBox = uicheckbox(app.VariablesgivenTab);
            app.Meaneffpressp_eCheckBox.ValueChangedFcn = createCallbackFcn(app, @Meaneffpressp_eCheckBoxValueChanged, true);
            app.Meaneffpressp_eCheckBox.Text = 'Mean eff. press. (p_e)';
            app.Meaneffpressp_eCheckBox.Position = [800 62 139 22];

            % Create DynamicpressureqCheckBox
            app.DynamicpressureqCheckBox = uicheckbox(app.VariablesgivenTab);
            app.DynamicpressureqCheckBox.ValueChangedFcn = createCallbackFcn(app, @DynamicpressureqCheckBoxValueChanged, true);
            app.DynamicpressureqCheckBox.Text = 'Dynamic pressure (q)';
            app.DynamicpressureqCheckBox.Position = [800 108 137 22];

            % Create Dynamicpressureq_infCheckBox
            app.Dynamicpressureq_infCheckBox = uicheckbox(app.VariablesgivenTab);
            app.Dynamicpressureq_infCheckBox.ValueChangedFcn = createCallbackFcn(app, @Dynamicpressureq_infCheckBoxValueChanged, true);
            app.Dynamicpressureq_infCheckBox.Text = 'Dynamic pressure (q_inf)';
            app.Dynamicpressureq_infCheckBox.Position = [800 85 156 22];

            % Create RadiusofearthrCheckBox
            app.RadiusofearthrCheckBox = uicheckbox(app.VariablesgivenTab);
            app.RadiusofearthrCheckBox.ValueChangedFcn = createCallbackFcn(app, @RadiusofearthrCheckBoxValueChanged, true);
            app.RadiusofearthrCheckBox.Text = 'Radius of earth (r)';
            app.RadiusofearthrCheckBox.Position = [979 131 119 22];

            % Create DensityrhoCheckBox
            app.DensityrhoCheckBox = uicheckbox(app.VariablesgivenTab);
            app.DensityrhoCheckBox.ValueChangedFcn = createCallbackFcn(app, @DensityrhoCheckBoxValueChanged, true);
            app.DensityrhoCheckBox.Text = 'Density (rho)';
            app.DensityrhoCheckBox.Position = [800 177 91 22];

            % Create Meansealvlpressrho_0CheckBox
            app.Meansealvlpressrho_0CheckBox = uicheckbox(app.VariablesgivenTab);
            app.Meansealvlpressrho_0CheckBox.ValueChangedFcn = createCallbackFcn(app, @Meansealvlpressrho_0CheckBoxValueChanged, true);
            app.Meansealvlpressrho_0CheckBox.Text = 'Mean sea lvl. press (rho_0)';
            app.Meansealvlpressrho_0CheckBox.Position = [800 131 167 22];

            % Create Freestreamdensityrho_infCheckBox
            app.Freestreamdensityrho_infCheckBox = uicheckbox(app.VariablesgivenTab);
            app.Freestreamdensityrho_infCheckBox.ValueChangedFcn = createCallbackFcn(app, @Freestreamdensityrho_infCheckBoxValueChanged, true);
            app.Freestreamdensityrho_infCheckBox.Text = 'Free stream density (rho_inf)';
            app.Freestreamdensityrho_infCheckBox.Position = [800 154 176 22];

            % Create ThetaCheckBox
            app.ThetaCheckBox = uicheckbox(app.VariablesgivenTab);
            app.ThetaCheckBox.ValueChangedFcn = createCallbackFcn(app, @ThetaCheckBoxValueChanged, true);
            app.ThetaCheckBox.Text = 'Theta';
            app.ThetaCheckBox.Position = [979 62 53 22];

            % Create TimeCheckBox
            app.TimeCheckBox = uicheckbox(app.VariablesgivenTab);
            app.TimeCheckBox.ValueChangedFcn = createCallbackFcn(app, @TimeCheckBoxValueChanged, true);
            app.TimeCheckBox.Text = 'Time';
            app.TimeCheckBox.Position = [979 39 48 22];

            % Create Geomalth_GCheckBox
            app.Geomalth_GCheckBox = uicheckbox(app.VariablesgivenTab);
            app.Geomalth_GCheckBox.ValueChangedFcn = createCallbackFcn(app, @Geomalth_GCheckBoxValueChanged, true);
            app.Geomalth_GCheckBox.Text = 'Geom. alt (h_G)';
            app.Geomalth_GCheckBox.Position = [979 108 108 22];

            % Create FormulatofindTab
            app.FormulatofindTab = uitab(app.TabGroup);
            app.FormulatofindTab.Title = 'Formula to find';

            % Create AspectratioARCheckBox
            app.AspectratioARCheckBox = uicheckbox(app.FormulatofindTab);
            app.AspectratioARCheckBox.ValueChangedFcn = createCallbackFcn(app, @AspectratioARCheckBoxValueChanged, true);
            app.AspectratioARCheckBox.Text = 'Aspect ratio (AR)';
            app.AspectratioARCheckBox.Position = [973 153 113 22];

            % Create CoeffofdragC_DCheckBox
            app.CoeffofdragC_DCheckBox = uicheckbox(app.FormulatofindTab);
            app.CoeffofdragC_DCheckBox.ValueChangedFcn = createCallbackFcn(app, @CoeffofdragC_DCheckBoxValueChanged, true);
            app.CoeffofdragC_DCheckBox.Text = 'Coeff of drag (C_D)';
            app.CoeffofdragC_DCheckBox.Position = [8 199 127 22];

            % Create CoeffofliftC_LCheckBox
            app.CoeffofliftC_LCheckBox = uicheckbox(app.FormulatofindTab);
            app.CoeffofliftC_LCheckBox.ValueChangedFcn = createCallbackFcn(app, @CoeffofliftC_LCheckBoxValueChanged, true);
            app.CoeffofliftC_LCheckBox.Text = 'Coeff of lift (C_L)';
            app.CoeffofliftC_LCheckBox.Position = [8 176 112 22];

            % Create DragpolarC_dCheckBox
            app.DragpolarC_dCheckBox = uicheckbox(app.FormulatofindTab);
            app.DragpolarC_dCheckBox.ValueChangedFcn = createCallbackFcn(app, @DragpolarC_dCheckBoxValueChanged, true);
            app.DragpolarC_dCheckBox.Text = 'Drag polar (C_d)';
            app.DragpolarC_dCheckBox.Position = [8 153 111 22];

            % Create TotaldragcoeffC_dtCheckBox
            app.TotaldragcoeffC_dtCheckBox = uicheckbox(app.FormulatofindTab);
            app.TotaldragcoeffC_dtCheckBox.ValueChangedFcn = createCallbackFcn(app, @TotaldragcoeffC_dtCheckBoxValueChanged, true);
            app.TotaldragcoeffC_dtCheckBox.Text = 'Total drag coeff (C_dt)';
            app.TotaldragcoeffC_dtCheckBox.Position = [8 130 140 22];

            % Create InduceddragcoeffC_diCheckBox
            app.InduceddragcoeffC_diCheckBox = uicheckbox(app.FormulatofindTab);
            app.InduceddragcoeffC_diCheckBox.ValueChangedFcn = createCallbackFcn(app, @InduceddragcoeffC_diCheckBoxValueChanged, true);
            app.InduceddragcoeffC_diCheckBox.Text = 'Induced drag coeff (C_di)';
            app.InduceddragcoeffC_diCheckBox.Position = [8 107 157 22];

            % Create liftdragcoeffC_d0CheckBox
            app.liftdragcoeffC_d0CheckBox = uicheckbox(app.FormulatofindTab);
            app.liftdragcoeffC_d0CheckBox.ValueChangedFcn = createCallbackFcn(app, @liftdragcoeffC_d0CheckBoxValueChanged, true);
            app.liftdragcoeffC_d0CheckBox.Text = '0 lift-drag coeff (C_d0)';
            app.liftdragcoeffC_d0CheckBox.Position = [8 84 141 22];

            % Create SkinfricdragcoeffC_dfCheckBox
            app.SkinfricdragcoeffC_dfCheckBox = uicheckbox(app.FormulatofindTab);
            app.SkinfricdragcoeffC_dfCheckBox.ValueChangedFcn = createCallbackFcn(app, @SkinfricdragcoeffC_dfCheckBoxValueChanged, true);
            app.SkinfricdragcoeffC_dfCheckBox.Text = 'Skin-fric drag coeff (C_df)';
            app.SkinfricdragcoeffC_dfCheckBox.Position = [8 61 159 22];

            % Create CoeffofwavedragCheckBox
            app.CoeffofwavedragCheckBox = uicheckbox(app.FormulatofindTab);
            app.CoeffofwavedragCheckBox.ValueChangedFcn = createCallbackFcn(app, @CoeffofwavedragCheckBoxValueChanged, true);
            app.CoeffofwavedragCheckBox.Text = 'Coeff of wave drag';
            app.CoeffofwavedragCheckBox.Position = [192 199 123 22];

            % Create CornervelocityCheckBox
            app.CornervelocityCheckBox = uicheckbox(app.FormulatofindTab);
            app.CornervelocityCheckBox.ValueChangedFcn = createCallbackFcn(app, @CornervelocityCheckBoxValueChanged, true);
            app.CornervelocityCheckBox.Text = 'Corner velocity';
            app.CornervelocityCheckBox.Position = [780 61 102 22];

            % Create DragDCheckBox
            app.DragDCheckBox = uicheckbox(app.FormulatofindTab);
            app.DragDCheckBox.ValueChangedFcn = createCallbackFcn(app, @DragDCheckBoxValueChanged, true);
            app.DragDCheckBox.Text = 'Drag (D)';
            app.DragDCheckBox.Position = [192 176 93 22];

            % Create EnduranceECheckBox
            app.EnduranceECheckBox = uicheckbox(app.FormulatofindTab);
            app.EnduranceECheckBox.ValueChangedFcn = createCallbackFcn(app, @EnduranceECheckBoxValueChanged, true);
            app.EnduranceECheckBox.Text = 'Endurance (E)';
            app.EnduranceECheckBox.Position = [973 176 99 22];

            % Create ForceonplaneFCheckBox
            app.ForceonplaneFCheckBox = uicheckbox(app.FormulatofindTab);
            app.ForceonplaneFCheckBox.ValueChangedFcn = createCallbackFcn(app, @ForceonplaneFCheckBoxValueChanged, true);
            app.ForceonplaneFCheckBox.Text = 'Force on plane (F)';
            app.ForceonplaneFCheckBox.Position = [973 107 121 22];

            % Create KCheckBox
            app.KCheckBox = uicheckbox(app.FormulatofindTab);
            app.KCheckBox.ValueChangedFcn = createCallbackFcn(app, @KCheckBoxValueChanged, true);
            app.KCheckBox.Text = 'K';
            app.KCheckBox.Position = [572 61 30 22];

            % Create LDratioCheckBox
            app.LDratioCheckBox = uicheckbox(app.FormulatofindTab);
            app.LDratioCheckBox.ValueChangedFcn = createCallbackFcn(app, @LDratioCheckBoxValueChanged, true);
            app.LDratioCheckBox.Text = 'L/D ratio';
            app.LDratioCheckBox.Position = [192 130 67 22];

            % Create LDmaxratioCheckBox
            app.LDmaxratioCheckBox = uicheckbox(app.FormulatofindTab);
            app.LDmaxratioCheckBox.ValueChangedFcn = createCallbackFcn(app, @LDmaxratioCheckBoxValueChanged, true);
            app.LDmaxratioCheckBox.Text = 'L/D max ratio';
            app.LDmaxratioCheckBox.Position = [192 107 93 22];

            % Create C_flaminarflowCheckBox
            app.C_flaminarflowCheckBox = uicheckbox(app.FormulatofindTab);
            app.C_flaminarflowCheckBox.ValueChangedFcn = createCallbackFcn(app, @C_flaminarflowCheckBoxValueChanged, true);
            app.C_flaminarflowCheckBox.Text = 'C_f (laminar flow)';
            app.C_flaminarflowCheckBox.Position = [192 84 116 22];

            % Create C_fturbulantflowCheckBox
            app.C_fturbulantflowCheckBox = uicheckbox(app.FormulatofindTab);
            app.C_fturbulantflowCheckBox.ValueChangedFcn = createCallbackFcn(app, @C_fturbulantflowCheckBoxValueChanged, true);
            app.C_fturbulantflowCheckBox.Text = 'C_f (turbulant flow)';
            app.C_fturbulantflowCheckBox.Position = [192 61 123 22];

            % Create PowerproducedPCheckBox
            app.PowerproducedPCheckBox = uicheckbox(app.FormulatofindTab);
            app.PowerproducedPCheckBox.ValueChangedFcn = createCallbackFcn(app, @PowerproducedPCheckBoxValueChanged, true);
            app.PowerproducedPCheckBox.Text = 'Power produced (P)';
            app.PowerproducedPCheckBox.Position = [572 199 129 22];

            % Create PowerrequiredP_RCheckBox
            app.PowerrequiredP_RCheckBox = uicheckbox(app.FormulatofindTab);
            app.PowerrequiredP_RCheckBox.ValueChangedFcn = createCallbackFcn(app, @PowerrequiredP_RCheckBoxValueChanged, true);
            app.PowerrequiredP_RCheckBox.Text = 'Power required (P_R)';
            app.PowerrequiredP_RCheckBox.Position = [572 176 138 22];

            % Create RangeRCheckBox
            app.RangeRCheckBox = uicheckbox(app.FormulatofindTab);
            app.RangeRCheckBox.ValueChangedFcn = createCallbackFcn(app, @RangeRCheckBoxValueChanged, true);
            app.RangeRCheckBox.Text = 'Range (R)';
            app.RangeRCheckBox.Position = [360 153 77 22];

            % Create MinimumradiusR_minCheckBox
            app.MinimumradiusR_minCheckBox = uicheckbox(app.FormulatofindTab);
            app.MinimumradiusR_minCheckBox.ValueChangedFcn = createCallbackFcn(app, @MinimumradiusR_minCheckBoxValueChanged, true);
            app.MinimumradiusR_minCheckBox.Text = 'Minimum radius (R_min)';
            app.MinimumradiusR_minCheckBox.Position = [780 176 153 22];

            % Create RangemaxR_maxCheckBox
            app.RangemaxR_maxCheckBox = uicheckbox(app.FormulatofindTab);
            app.RangemaxR_maxCheckBox.ValueChangedFcn = createCallbackFcn(app, @RangemaxR_maxCheckBoxValueChanged, true);
            app.RangemaxR_maxCheckBox.Text = 'Range max (R_max)';
            app.RangemaxR_maxCheckBox.Position = [360 130 133 22];

            % Create ForceinlevelturnCheckBox
            app.ForceinlevelturnCheckBox = uicheckbox(app.FormulatofindTab);
            app.ForceinlevelturnCheckBox.ValueChangedFcn = createCallbackFcn(app, @ForceinlevelturnCheckBoxValueChanged, true);
            app.ForceinlevelturnCheckBox.Text = 'Force in level turn';
            app.ForceinlevelturnCheckBox.Position = [360 107 117 22];

            % Create ForceinpulldownCheckBox
            app.ForceinpulldownCheckBox = uicheckbox(app.FormulatofindTab);
            app.ForceinpulldownCheckBox.ValueChangedFcn = createCallbackFcn(app, @ForceinpulldownCheckBoxValueChanged, true);
            app.ForceinpulldownCheckBox.Text = 'Force in pull down';
            app.ForceinpulldownCheckBox.Position = [360 84 119 22];

            % Create ForceinpullupCheckBox
            app.ForceinpullupCheckBox = uicheckbox(app.FormulatofindTab);
            app.ForceinpullupCheckBox.ValueChangedFcn = createCallbackFcn(app, @ForceinpullupCheckBoxValueChanged, true);
            app.ForceinpullupCheckBox.Text = 'Force in pull up';
            app.ForceinpullupCheckBox.Position = [360 61 104 22];

            % Create SFCCheckBox
            app.SFCCheckBox = uicheckbox(app.FormulatofindTab);
            app.SFCCheckBox.ValueChangedFcn = createCallbackFcn(app, @SFCCheckBoxValueChanged, true);
            app.SFCCheckBox.Text = 'SFC';
            app.SFCCheckBox.Position = [572 130 46 22];

            % Create TSFCCheckBox
            app.TSFCCheckBox = uicheckbox(app.FormulatofindTab);
            app.TSFCCheckBox.ValueChangedFcn = createCallbackFcn(app, @TSFCCheckBoxValueChanged, true);
            app.TSFCCheckBox.Text = 'TSFC';
            app.TSFCCheckBox.Position = [572 107 53 22];

            % Create ThrustrequiredT_RCheckBox
            app.ThrustrequiredT_RCheckBox = uicheckbox(app.FormulatofindTab);
            app.ThrustrequiredT_RCheckBox.ValueChangedFcn = createCallbackFcn(app, @ThrustrequiredT_RCheckBoxValueChanged, true);
            app.ThrustrequiredT_RCheckBox.Text = 'Thrust required (T_R)';
            app.ThrustrequiredT_RCheckBox.Position = [572 153 137 22];

            % Create TurnrateCheckBox
            app.TurnrateCheckBox = uicheckbox(app.FormulatofindTab);
            app.TurnrateCheckBox.ValueChangedFcn = createCallbackFcn(app, @TurnrateCheckBoxValueChanged, true);
            app.TurnrateCheckBox.Text = 'Turn rate';
            app.TurnrateCheckBox.Position = [780 199 71 22];

            % Create FoSVelocityVCheckBox
            app.FoSVelocityVCheckBox = uicheckbox(app.FormulatofindTab);
            app.FoSVelocityVCheckBox.ValueChangedFcn = createCallbackFcn(app, @FoSVelocityVCheckBoxValueChanged, true);
            app.FoSVelocityVCheckBox.Text = 'FoS Velocity (V)';
            app.FoSVelocityVCheckBox.Position = [780 153 108 22];

            % Create TrueairspeedV_TASCheckBox
            app.TrueairspeedV_TASCheckBox = uicheckbox(app.FormulatofindTab);
            app.TrueairspeedV_TASCheckBox.ValueChangedFcn = createCallbackFcn(app, @TrueairspeedV_TASCheckBoxValueChanged, true);
            app.TrueairspeedV_TASCheckBox.Text = 'True air speed (V_TAS)';
            app.TrueairspeedV_TASCheckBox.Position = [780 130 147 22];

            % Create FlightvelocityV_fCheckBox
            app.FlightvelocityV_fCheckBox = uicheckbox(app.FormulatofindTab);
            app.FlightvelocityV_fCheckBox.ValueChangedFcn = createCallbackFcn(app, @FlightvelocityV_fCheckBoxValueChanged, true);
            app.FlightvelocityV_fCheckBox.Text = 'Flight velocity (V_f)';
            app.FlightvelocityV_fCheckBox.Position = [780 107 124 22];

            % Create StallSpeedV_stallCheckBox
            app.StallSpeedV_stallCheckBox = uicheckbox(app.FormulatofindTab);
            app.StallSpeedV_stallCheckBox.ValueChangedFcn = createCallbackFcn(app, @StallSpeedV_stallCheckBoxValueChanged, true);
            app.StallSpeedV_stallCheckBox.Text = 'Stall Speed (V_stall)';
            app.StallSpeedV_stallCheckBox.Position = [780 84 131 22];

            % Create WingLoadingWSCheckBox
            app.WingLoadingWSCheckBox = uicheckbox(app.FormulatofindTab);
            app.WingLoadingWSCheckBox.ValueChangedFcn = createCallbackFcn(app, @WingLoadingWSCheckBoxValueChanged, true);
            app.WingLoadingWSCheckBox.Text = 'Wing Loading (W/S)';
            app.WingLoadingWSCheckBox.Position = [973 199 129 22];

            % Create LiftLCheckBox
            app.LiftLCheckBox = uicheckbox(app.FormulatofindTab);
            app.LiftLCheckBox.ValueChangedFcn = createCallbackFcn(app, @LiftLCheckBoxValueChanged, true);
            app.LiftLCheckBox.Text = 'Lift (L)';
            app.LiftLCheckBox.Position = [192 153 56 22];

            % Create EfficiencyfactoreCheckBox
            app.EfficiencyfactoreCheckBox = uicheckbox(app.FormulatofindTab);
            app.EfficiencyfactoreCheckBox.ValueChangedFcn = createCallbackFcn(app, @EfficiencyfactoreCheckBoxValueChanged, true);
            app.EfficiencyfactoreCheckBox.Text = 'Efficiency factor (e)';
            app.EfficiencyfactoreCheckBox.Position = [572 84 124 22];

            % Create AccduetogravitygCheckBox_2
            app.AccduetogravitygCheckBox_2 = uicheckbox(app.FormulatofindTab);
            app.AccduetogravitygCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @AccduetogravitygCheckBox_2ValueChanged, true);
            app.AccduetogravitygCheckBox_2.Text = 'Acc. due to gravity (g)';
            app.AccduetogravitygCheckBox_2.Position = [360 199 139 22];

            % Create LoadfactornCheckBox
            app.LoadfactornCheckBox = uicheckbox(app.FormulatofindTab);
            app.LoadfactornCheckBox.ValueChangedFcn = createCallbackFcn(app, @LoadfactornCheckBoxValueChanged, true);
            app.LoadfactornCheckBox.Text = 'Load factor (n)';
            app.LoadfactornCheckBox.Position = [973 130 100 22];

            % Create DynamicPressureq_infCheckBox
            app.DynamicPressureq_infCheckBox = uicheckbox(app.FormulatofindTab);
            app.DynamicPressureq_infCheckBox.ValueChangedFcn = createCallbackFcn(app, @DynamicPressureq_infCheckBoxValueChanged, true);
            app.DynamicPressureq_infCheckBox.Text = 'Dynamic Pressure (q_inf)';
            app.DynamicPressureq_infCheckBox.Position = [973 84 157 22];

            % Create TakeofflandingperfsCheckBox
            app.TakeofflandingperfsCheckBox = uicheckbox(app.FormulatofindTab);
            app.TakeofflandingperfsCheckBox.ValueChangedFcn = createCallbackFcn(app, @TakeofflandingperfsCheckBoxValueChanged, true);
            app.TakeofflandingperfsCheckBox.Text = 'Take off/landing perf. (s)';
            app.TakeofflandingperfsCheckBox.Position = [360 176 151 22];

            % Create ThetaCheckBox_2
            app.ThetaCheckBox_2 = uicheckbox(app.FormulatofindTab);
            app.ThetaCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @ThetaCheckBox_2ValueChanged, true);
            app.ThetaCheckBox_2.Text = 'Theta';
            app.ThetaCheckBox_2.Position = [973 61 53 22];

            % Create ComputeButton
            app.ComputeButton = uibutton(app.UIFigure, 'push');
            app.ComputeButton.ButtonPushedFcn = createCallbackFcn(app, @ComputeButtonPushed, true);
            app.ComputeButton.Position = [392 244 100 22];
            app.ComputeButton.Text = 'Compute';

            % Create ResetButton
            app.ResetButton = uibutton(app.UIFigure, 'push');
            app.ResetButton.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonPushed, true);
            app.ResetButton.Position = [669 244 100 22];
            app.ResetButton.Text = 'Reset';

            % Create VariablesrequiredtosolveLabel
            app.VariablesrequiredtosolveLabel = uilabel(app.UIFigure);
            app.VariablesrequiredtosolveLabel.HorizontalAlignment = 'right';
            app.VariablesrequiredtosolveLabel.Position = [29 173 153 42];
            app.VariablesrequiredtosolveLabel.Text = 'Variables required to solve: ';

            % Create VariablesrequiredtosolveTextArea
            app.VariablesrequiredtosolveTextArea = uitextarea(app.UIFigure);
            app.VariablesrequiredtosolveTextArea.Position = [36 18 524 156];

            % Create FormulaLabel
            app.FormulaLabel = uilabel(app.UIFigure);
            app.FormulaLabel.HorizontalAlignment = 'right';
            app.FormulaLabel.Position = [621 183 53 22];
            app.FormulaLabel.Text = 'Formula:';

            % Create FormulaTextArea
            app.FormulaTextArea = uitextarea(app.UIFigure);
            app.FormulaTextArea.Position = [622 18 546 156];

            % Create HelpButton
            app.HelpButton = uibutton(app.UIFigure, 'push');
            app.HelpButton.ButtonPushedFcn = createCallbackFcn(app, @HelpButtonPushed, true);
            app.HelpButton.Position = [1106 244 51 22];
            app.HelpButton.Text = 'Help';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Sample

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end