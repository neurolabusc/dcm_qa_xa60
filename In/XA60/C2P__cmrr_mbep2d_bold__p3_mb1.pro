<XProtocol> 
{
  <ID> 1000001 
  <Userversion> 666.0 
  
  <ParamMap.""> 
  {
    <ParamMap."DMWL"> 
    {
      
      <ParamMap."Pause"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
      <ParamMap."Meas"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
    }
    <ParamMap."MultiStep"> 
    {
      
      <ParamBool."IsMultistep">  { }
      <ParamArray."SubStep"> 
      {
        <Default> <ParamLong.""> 
        {
        }
        { 1  }
        
      }
      <ParamBool."SaveNonnormalizedImages">  { "true"  }
      <ParamBool."IsInlineCompose">  { }
      <ParamLong."ComposingGroup">  { 1  }
      <ParamBool."IsLastStep">  { }
      <ParamChoice."ComposingFunction">  { <Limit> { "Angio" "Spine" "Adaptive" "Diffusion" } "Angio"  }
      <ParamChoice."ComposingNormalize">  { <Limit> { "Off" "Weak" "Medium" "Strong" } "Off"  }
      <ParamString."SeriesDescription">  { }
      <ParamLong."2DDistCor">  { }
      <ParamLong."DynDistCor">  { }
      <ParamLong."ScanAtCenterDummy">  { }
    }
    <ParamMap."OpenRecon"> 
    {
      
      <ParamString."OpenReconAlgorithm">  { }
      <ParamArray."Parameters"> 
      {
        <Default> <ParamMap.""> 
        {
          
          <ParamString."Id"> 
          {
          }
          
          <ParamString."ParameterValue"> 
          {
          }
        }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        
      }
    }
    <ParamMap."Properties"> 
    {
      
      <ParamMap."Reconstruction"> 
      {
        
        <ParamBool."recon_prio">  { }
      }
      <ParamMap."Sound"> 
      {
        
        <ParamString."PreSound">  { }
        <ParamString."PostSound">  { }
      }
      <ParamMap."AutoLoad"> 
      {
        
        <ParamBool."DisableAutoTransfer">  { }
        <ParamBool."AutoStore">  { "true"  }
        <ParamBool."LoadToFilming">  { "true"  }
        <ParamBool."LoadToViewer">  { "true"  }
        <ParamBool."LoadToStamp">  { }
        <ParamBool."LoadToGraphic">  { }
        <ParamChoice."GraphicSegmentChoice">  { <Limit> { "Default" "1st segment" "2nd segment" "3rd segment" "All segments" } "Default"  }
        <ParamBool."InlineMovie">  { }
        <ParamBool."AutoOpenInlineDisplay">  { }
        <ParamBool."AutoCloseInlineDisplay">  { }
        <ParamBool."InlinePositionDisplay">  { }
        <ParamChoice."InlinePositionDisplayOrientation">  { <Limit> { "All orientations" "Sag" "Cor" "Tra" } "All orientations"  }
      }
      <ParamMap."SlicePositioning"> 
      {
        
        <ParamBool."AutoAlignSpine">  { }
      }
      <ParamMap."Queue"> 
      {
        
        <ParamChoice."CoilSelectMode">  { <Limit> { "Default" "Auto Coil Select Off" "Auto Coil Select On" "Auto Coil Select No Spine" "Auto Coil Select Restricted" "Coil Memory Off" "Coil Memory On" "All Off" } "Auto Coil Select On"  }
        <ParamArray."CoilCompartments"> 
        {
          <Default> <ParamBool.""> 
          {
            <Visible> "true" 
            <Limit> { "true" "false" }
          }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          
        }
        <ParamBool."WorkingMan">  { "true"  }
        <ParamBool."WaitForUserToStart">  { }
        <ParamChoice."WaitForStartChoice">  { <Limit> { "Single measurement" "Repeated measurement" } "Single measurement"  }
        <ParamString."Description">  { }
        <ParamString."ProtocolName">  { "C2P__cmrr_mbep2d_bold__p3_mb1"  }
      }
    }
  }
}

<XProtocol> 
{
  <ID> 2 
  <Userversion> 3.3 
  
  <ParamMap.""> 
  {
    <ParamMap."Common"> 
    {
      
      <ParamBool."DisableVoiceCommands">  { }
      <ParamBool."IsRadialSliceSortingActive">  { }
      <ParamBool."ConfidenceRescaling">  { }
    }
    <ParamMap."ConflictSolving"> 
    {
      
      <ParamLong."ConflictSolvingMode">  { }
      <ParamDouble."MaxTr">  { }
      <ParamDouble."MinFlipAngle">  { }
    }
    <PipeService."EVA"> 
    {
      <Class> "PipeLinkService@MrParcPipe" 
      
      <ParamLong."POOLTHREADS">  { 1  }
      <ParamString."GROUP">  { "Calculation"  }
      <ParamLong."DATATHREADS">  { }
      <ParamLong."WATERMARK">  { }
      <ParamString."tdefaultEVAProt">  { "%SiemensEvaDefProt%/BOLD/t-test_10B10A_moco.evp"  }
      <ParamBool."tt_visible">  { }
      <ParamFunctor."MosaicUnwrapper"> 
      {
        <Class> "MosaicUnwrapper@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MotionCorrDecorator"> 
      {
        <Class> "MotionCorrDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamBool."MoCo">  { }
        <ParamChoice."InterpolMoCo">  { <Limit> { "linear" "3D-K-space" "Sinc" "QuinSpline" } "3D-K-space"  }
        <ParamLong."SincKernelSize">  { 5  }
        <ParamBool."Filter">  { }
        <ParamDouble."FilterWidth">  { <Precision> 1  1.0  }
        <ParamBool."IsInlineProcessing">  { "true"  }
        <ParamLong."Pace">  { }
        <ParamDouble."RotAngle">  { <Precision> 6  }
        <ParamLong."Rep2BePatched">  { -1  }
        <ParamBool."DumpPaceInfo">  { }
        <ParamDouble."PatchTransX">  { <Precision> 1  }
        <ParamDouble."PatchTransY">  { <Precision> 1  }
        <ParamDouble."PatchTransZ">  { <Precision> 1  }
        <ParamDouble."PatchRotX">  { <Precision> 1  }
        <ParamDouble."PatchRotY">  { <Precision> 1  }
        <ParamDouble."PatchRotZ">  { <Precision> 1  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."FMRIFunctor"> 
      {
        <Class> "FMRIFunctor@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamLong."IgnoreMeas">  { }
        <ParamLong."IgnoresAfterTransition">  { }
        <ParamBool."HRFModelConvolution">  { "true"  }
        <ParamBool."TemporalHighpass">  { "true"  }
        <ParamLong."paradigm_size">  { 3  }
        <ParamArray."paradigm"> 
        {
          <Default> <ParamChoice.""> 
          {
            <Visible> "true" 
            <Default> "active" 
            <Limit> { "ignore" "active" "baseline" }
          }
          { "baseline"  }
          { "baseline"  }
          { }
          
        }
        <ParamBool."t-test">  { }
        <ParamBool."glm">  { }
        <ParamDouble."Threshold">  { <Precision> 2  4.00  }
        <ParamChoice."window">  { <Limit> { "constWindow" "Growing Window" } "Growing Window"  }
        <ParamBool."IsInlineProcessing">  { "true"  }
        <ParamChoice."InlineLUT">  { <Limit> { "<Not found>" "BOLDInline.pal" "HotMetal.pal" "ColdMetal.pal" "Thal.pal" } "BOLDInline.pal"  }
        <ParamDouble."InlineLUTRange">  { <Precision> 2  6.00  }
        <ParamLong."StartInlineAtMeas">  { }
        <ParamLong."MaxCovarHighpass">  { 16  }
        <ParamLong."ForcedCovarHighpass">  { -1  }
        <ParamDouble."HRFDelay_s">  { 99999.999  }
        <ParamBool."UseExternalDesign">  { }
        <ParamString."ExternalInputDir">  { "p1cond"  }
        <ParamLong."JobsPerCPU">  { 1  }
        <ParamLong."MaxCovarHighpassUsed">  { 5  }
        <ParamDouble."InlineDisplayUpdateInterval">  { 2.000  }
        <ParamLong."MaxNumberOfJobs">  { }
        <ParamDouble."MeanAndTMapsNoiseMaskingThreshold">  { 0.050  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MosaicDecorator"> 
      {
        <Class> "MosaicDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { "true"  }
        <ParamBool."Mosaic">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "MosaicDecorator" "ComputeImage"  }
      }
    }
  }
}

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=66010002 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	66010002
tSequenceFileName	 = 	"%CustomerSeq%\cmrr_mbep2d_bold"
tProtocolName	 = 	"C2P__cmrr_mbep2d_bold__p3_mb1"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\BOLD\t-test_10B10A_moco.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
ucEnableNoiseAdjust	 = 	1
lContrasts	 = 	1
lCombinedEchoes	 = 	1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucAARegionMode	 = 	1
ucAARefMode	 = 	1
ucReconstructionMode	 = 	1
ucOneSeriesForAllMeas	 = 	1
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lRepetitions	 = 	2
lScanTimeSec	 = 	1
lTotalScanTimeSec	 = 	11
dRefSNR	 = 	17736.2002695
dRefSNR_VOI	 = 	17736.2002695
ulMotionCorr	 = 	1
ucCineMode	 = 	1
ucSequenceType	 = 	4
ucCoilCombineMode	 = 	1
ucFlipAngleMode	 = 	1
lTOM	 = 	1
ucReadOutMode	 = 	1
ucBold3dPace	 = 	1
ucInteractiveRealtime	 = 	0x1
ucTmapB0Correction	 = 	1
ucTmapEval	 = 	1
ucTmapImageType	 = 	1
ulOrganUnderExamination	 = 	1
dTissueT1	 = 	10.0
dTissueT2	 = 	5.0
lInvContrasts	 = 	1
ulReaquisitionMode	 = 	1
lDummyScans	 = 	0
ucExternalTriggerSignal	 = 	0x0
lSilentPeriod	 = 	0
dOverallImageScaleFactor	 = 	2.0
dOverallImageScaleCorrectionFactor	 = 	1.0
dAutoCoilSelectIlluRangeScale	 = 	0.699999988079
SarOptimization	 = 	0
CameraBasedMotionCorrection	 = 	0
ucBreastApplication	 = 	0x0
ucEddyCurrentComp	 = 	0x0
ucStaticFieldCorrection	 = 	0x0
ucDenoiseUniform	 = 	0x0
ucUnfilteredImagesForDenoiseUniform	 = 	0x0
lDenoiseWeight	 = 	1
sInversionContrastCombination	 = 	1
ucMotionCorSAMEROrig	 = 	0x1
sProtConsistencyInfo.flNominalB0	 = 	6.98093605042
sGRADSPEC.ucMode	 = 	2
sGRADSPEC.ucNoiseReduction	 = 	1
sGRADSPEC.asGPAData.__attribute__.size	 = 	1
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.alShimCurrent.__attribute__.size	 = 	15
sTXSPEC.lBCExcitationMode	 = 	0
sTXSPEC.lBCSeqExcitationMode	 = 	4
sTXSPEC.ucRFPulseType	 = 	2
sTXSPEC.ucExcitMode	 = 	32
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[1].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.aRFPULSE.__attribute__.size	 = 	256
sTXSPEC.aTxScaleFactor.__attribute__.size	 = 	8
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x0
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x0
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.0
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.0
sRXSPEC.lSeqGain	 = 	1
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.bPilotToneSupportActive	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	3600
sRXSPEC.alDwellTime[1]	 = 	5200
sRXSPEC.alDwellTime[2]	 = 	5200
sRXSPEC.alDwellTime[3]	 = 	5200
sRXSPEC.alDwellTime[4]	 = 	5200
sRXSPEC.alDwellTime[5]	 = 	5200
sRXSPEC.alDwellTime[6]	 = 	5200
sRXSPEC.alDwellTime[7]	 = 	5200
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	1
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.uiAdjFreProtRelated	 = 	0x1
sAdjData.lCoupleAdjVolTo	 = 	1
sAdjData.uiAdjB0AcqMode	 = 	1
sAdjData.uiAdjB1AcqMode	 = 	1
sAdjData.uiAdjFreqConfirmSpec	 = 	1
sAdjData.uiAdjustmentMode	 = 	1
sAdjData.uiFastViewOptimization	 = 	1
sAdjData.bAdjustWithBreathhold	 = 	0x0
sAdjData.uiLocalShim	 = 	0
sAdjData.uiLRBalancing	 = 	0
sAdjData.sAdjUIOverrides.iAdjUIFieldMapMode	 = 	-1
sAdjData.sAdjUIOverrides.iAdjUITraMode	 = 	-1
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	1230000
alTI.__attribute__.size	 = 	256
alTI[0]	 = 	2500000
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	20000
alTE[1]	 = 	1000
alTE[2]	 = 	1000
alTE[3]	 = 	1000
alTE[4]	 = 	1000
alTE[5]	 = 	1000
alTE[6]	 = 	1000
alTE[7]	 = 	1000
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
acFlowComp[1]	 = 	1
acFlowComp[2]	 = 	1
acFlowComp[3]	 = 	1
acFlowComp[4]	 = 	1
acFlowComp[5]	 = 	1
acFlowComp[6]	 = 	1
acFlowComp[7]	 = 	1
sSliceArray.lSize	 = 	10
sSliceArray.lCor	 = 	10
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	2.0
sSliceArray.asSlice[0].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[0].sPosition.dCor	 = 	16.7224880383
sSliceArray.asSlice[0].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[0].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[1].dThickness	 = 	2.0
sSliceArray.asSlice[1].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[1].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[1].sPosition.dCor	 = 	18.7224880383
sSliceArray.asSlice[1].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[1].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[2].dThickness	 = 	2.0
sSliceArray.asSlice[2].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[2].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[2].sPosition.dCor	 = 	20.7224880383
sSliceArray.asSlice[2].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[2].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[3].dThickness	 = 	2.0
sSliceArray.asSlice[3].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[3].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[3].sPosition.dCor	 = 	22.7224880383
sSliceArray.asSlice[3].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[3].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[4].dThickness	 = 	2.0
sSliceArray.asSlice[4].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[4].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[4].sPosition.dCor	 = 	24.7224880383
sSliceArray.asSlice[4].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[4].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[5].dThickness	 = 	2.0
sSliceArray.asSlice[5].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[5].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[5].sPosition.dCor	 = 	26.7224880383
sSliceArray.asSlice[5].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[5].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[6].dThickness	 = 	2.0
sSliceArray.asSlice[6].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[6].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[6].sPosition.dCor	 = 	28.7224880383
sSliceArray.asSlice[6].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[6].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[7].dThickness	 = 	2.0
sSliceArray.asSlice[7].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[7].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[7].sPosition.dCor	 = 	30.7224880383
sSliceArray.asSlice[7].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[7].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[8].dThickness	 = 	2.0
sSliceArray.asSlice[8].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[8].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[8].sPosition.dCor	 = 	32.7224880383
sSliceArray.asSlice[8].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[8].sNormal.dCor	 = 	1.0
sSliceArray.asSlice[9].dThickness	 = 	2.0
sSliceArray.asSlice[9].dPhaseFOV	 = 	128.0
sSliceArray.asSlice[9].dReadoutFOV	 = 	128.0
sSliceArray.asSlice[9].sPosition.dCor	 = 	34.7224880383
sSliceArray.asSlice[9].sPosition.dTra	 = 	-12.8612440192
sSliceArray.asSlice[9].sNormal.dCor	 = 	1.0
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.alSliceAcqOrder[1]	 = 	1
sSliceArray.alSliceAcqOrder[2]	 = 	2
sSliceArray.alSliceAcqOrder[3]	 = 	3
sSliceArray.alSliceAcqOrder[4]	 = 	4
sSliceArray.alSliceAcqOrder[5]	 = 	5
sSliceArray.alSliceAcqOrder[6]	 = 	6
sSliceArray.alSliceAcqOrder[7]	 = 	7
sSliceArray.alSliceAcqOrder[8]	 = 	8
sSliceArray.alSliceAcqOrder[9]	 = 	9
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anAsc[1]	 = 	1
sSliceArray.anAsc[2]	 = 	2
sSliceArray.anAsc[3]	 = 	3
sSliceArray.anAsc[4]	 = 	4
sSliceArray.anAsc[5]	 = 	5
sSliceArray.anAsc[6]	 = 	6
sSliceArray.anAsc[7]	 = 	7
sSliceArray.anAsc[8]	 = 	8
sSliceArray.anAsc[9]	 = 	9
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.anPos[1]	 = 	1
sSliceArray.anPos[2]	 = 	2
sSliceArray.anPos[3]	 = 	3
sSliceArray.anPos[4]	 = 	4
sSliceArray.anPos[5]	 = 	5
sSliceArray.anPos[6]	 = 	6
sSliceArray.anPos[7]	 = 	7
sSliceArray.anPos[8]	 = 	8
sSliceArray.anPos[9]	 = 	9
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	10
sGroupArray.anMember.__attribute__.size	 = 	258
sGroupArray.anMember[1]	 = 	1
sGroupArray.anMember[2]	 = 	2
sGroupArray.anMember[3]	 = 	3
sGroupArray.anMember[4]	 = 	4
sGroupArray.anMember[5]	 = 	5
sGroupArray.anMember[6]	 = 	6
sGroupArray.anMember[7]	 = 	7
sGroupArray.anMember[8]	 = 	8
sGroupArray.anMember[9]	 = 	9
sGroupArray.anMember[10]	 = 	-1
sGroupArray.sPSat.dThickness	 = 	50.0
sGroupArray.sPSat.dGap	 = 	10.0
sGroupArray.sPSat.ulShape	 = 	1
sRSatArray.asElm.__attribute__.size	 = 	8
sRSatArray.asElm[0].ulShape	 = 	1
sRSatArray.asElm[1].ulShape	 = 	1
sRSatArray.asElm[2].ulShape	 = 	1
sRSatArray.asElm[3].ulShape	 = 	1
sRSatArray.asElm[4].ulShape	 = 	1
sRSatArray.asElm[5].ulShape	 = 	1
sRSatArray.asElm[6].ulShape	 = 	1
sRSatArray.asElm[7].ulShape	 = 	1
sNavigatorArray.asElm.__attribute__.size	 = 	5
sAutoAlign.dAAMatrix.__attribute__.size	 = 	16
sAutoAlign.dAAMatrix[0]	 = 	1.0
sAutoAlign.dAAMatrix[5]	 = 	1.0
sAutoAlign.dAAMatrix[10]	 = 	1.0
sAutoAlign.dAAMatrix[15]	 = 	1.0
sNavigatorPara.lBreathHoldMeas	 = 	1
sNavigatorPara.lRespComp	 = 	4
sNavigatorPara.dMinimumTriggerLevel	 = 	20.0
sNavigatorPara.adTrackingFactor.__attribute__.size	 = 	2
sNavigatorPara.adAcceptWindow.__attribute__.size	 = 	2
sNavigatorPara.adAcceptPosition.__attribute__.size	 = 	2
sNavigatorPara.adSearchWindow.__attribute__.size	 = 	2
sNavigatorPara.alFree.__attribute__.size	 = 	36
sNavigatorPara.adFree.__attribute__.size	 = 	24
sNavigatorPara.tFree.__attribute__.size	 = 	128
sBladePara.dBladeCoverage	 = 	100.0
sBladePara.ulMotionCorr	 = 	2
sBladePara.alFree.__attribute__.size	 = 	16
sBladePara.adFree.__attribute__.size	 = 	8
sPrepPulses.ucInversion	 = 	4
sPrepPulses.ucSatRecovery	 = 	1
sPrepPulses.ucT2Prep	 = 	1
sPrepPulses.ucTIScout	 = 	1
sPrepPulses.lMTCMode	 = 	1
sPrepPulses.lFlowAttenuation	 = 	1
sPrepPulses.ucFatSatMode	 = 	2
sPrepPulses.dDarkBloodThickness	 = 	200.0
sPrepPulses.dDarkBloodFlipAngle	 = 	200.0
sPrepPulses.dIRPulseThicknessFactor	 = 	0.77
sPrepPulses.ucBloodSuppression	 = 	1
sPrepPulses.lPhaseCorrectionMode	 = 	1
sPrepPulses.ucIRScheme	 = 	1
sPrepPulses.lFatSupOpt	 = 	1
sPrepPulses.lFatWaterContrast	 = 	4
sPrepPulses.adT2PrepDuration.__attribute__.size	 = 	1
sPrepPulses.adT2PrepDuration[0]	 = 	40.0
sKSpace.dPhaseResolution	 = 	1.0
sKSpace.dSliceResolution	 = 	1.0
sKSpace.dAngioDynCentralRegionA	 = 	20.0
sKSpace.dAngioDynSamplingDensityB	 = 	25.0
sKSpace.dSeqPhasePartialFourierForSNR	 = 	1.0
sKSpace.lBaseResolution	 = 	64
sKSpace.lPhaseEncodingLines	 = 	64
sKSpace.lPartitions	 = 	48
sKSpace.lImagesPerSlab	 = 	48
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	2
sKSpace.ucDimension	 = 	2
sKSpace.ucTrajectory	 = 	1
sKSpace.lNumberOfBins	 = 	0
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.Reordering3D	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sKSpace.ucDynamicMode	 = 	1
sKSpace.ucUndersamplingPattern	 = 	1
sKSpace.lTrajectoryOptimization	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	128
sFastImaging.lTurboFactor	 = 	1
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
sFastImaging.ucPhaseEncRE	 = 	0x0
sFastImaging.ucSegmentationMode	 = 	1
sFastImaging.lShots	 = 	1
sFastImaging.lEchoTrainDuration	 = 	700
sPhysioImaging.lSignal1	 = 	1
sPhysioImaging.lMethod1	 = 	1
sPhysioImaging.lSignal2	 = 	1
sPhysioImaging.lMethod2	 = 	1
sPhysioImaging.lPhases	 = 	1
sPhysioImaging.lRetroGatedImages	 = 	16
sPhysioImaging.lDummyHeartbeats	 = 	0
sPhysioImaging.sPhysioECG.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioECG.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioECG.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioECG.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioECG.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioECG.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioECG.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioPulse.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioPulse.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioPulse.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioPulse.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioPulse.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioExt.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioExt.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioExt.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioExt.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioExt.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt2.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt2.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioBeatSensor.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioBeatSensor.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioBeatSensor.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioResp.lRespGateThreshold	 = 	20
sPhysioImaging.sPhysioResp.lRespGatePhase	 = 	2
sPhysioImaging.sPhysioResp.dGatingRatio	 = 	0.3
sPhysioImaging.sPhysioNative.ucMode	 = 	1
sPhysioImaging.sPhysioNative.ucFlowSenMode	 = 	1
sSpecPara.lPhaseCyclingType	 = 	1
sSpecPara.lPhaseEncodingType	 = 	1
sSpecPara.lRFExcitationBandwidth	 = 	1
sSpecPara.ucRemoveOversampling	 = 	0x1
sSpecPara.lAutoRefScanMode	 = 	1
sSpecPara.lAutoRefScanNo	 = 	1
sSpecPara.lDecouplingType	 = 	1
sSpecPara.lNOEType	 = 	1
sSpecPara.lExcitationType	 = 	1
sSpecPara.lFinalMatrixSizePhase	 = 	20241004
sSpecPara.lFinalMatrixSizeRead	 = 	143638
sSpecPara.lFinalMatrixSizeSlice	 = 	10
sSpecPara.lSpecAppl	 = 	1
sSpecPara.lSpectralSuppression	 = 	1
sDiffusion.ulMode	 = 	1
sDiffusion.dsScheme	 = 	1
sDiffusion.ulQSpaceCoverage	 = 	1
sDiffusion.ulQSpaceSampling	 = 	1
sDiffusion.lQSpaceSteps	 = 	1
sDiffusion.alBValue.__attribute__.size	 = 	128
sDiffusion.alAverages.__attribute__.size	 = 	128
sDiffusion.sFreeDiffusionData.ulCoordinateSystem	 = 	1
sDiffusion.sFreeDiffusionData.ulNormalization	 = 	1
sDiffusion.sFreeDiffusionData.asDiffDirVector.__attribute__.size	 = 	0
sAngio.ucPCFlowMode	 = 	2
sAngio.ucTOFInflow	 = 	4
sAngio.lDynamicReconMode	 = 	1
sAngio.lTemporalInterpolation	 = 	1
sAngio.sFlowArray.asElm.__attribute__.size	 = 	16
sPreScanNormalizeFilter.ucMode	 = 	2
sDistortionCorrFilter.ucMode	 = 	2
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	3
sPat.lAccelFact3D	 = 	1
sPat.lRefLinesPE	 = 	30
sPat.ucPATMode	 = 	2
sPat.ucRefScanMode	 = 	256
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
sPat.dTotalAccelFact	 = 	2.0
sMds.ulMdsModeMask	 = 	1
sMds.lTableSpeedNumerator	 = 	1
sMds.lmdsLinesPerSegment	 = 	15
sMds.lMdsPtabAbsStartPosZ	 = 	0
sMds.bMdsPtabAbsStartPosZValid	 = 	0x0
sMds.lMdsPtabAbsEndPosZ	 = 	0
sMds.bMdsPtabAbsEndPosZValid	 = 	0x0
sMds.lMdsPtabAbsStartPosZOriginal	 = 	0
sMds.lMdsPtabAbsEndPosZOriginal	 = 	0
sMds.dMdsRangeExtension	 = 	600.0
sMds.lSweeps	 = 	1
sMds.ucSweepMode	 = 	1
sMds.dDCSIlluminationScale	 = 	2.0
sMds.ucExcitDir	 = 	1
sMds.ucFreqShimPerSlice	 = 	0x1
sMds.ucSliceFollowing	 = 	0x1
sMds.ucDynamicCoilSwitching	 = 	0x1
sMds.ucPhaseNav	 = 	0x0
sMds.asMdsMotionInterval.__attribute__.size	 = 	8
sMds.alFree.__attribute__.size	 = 	8
sMds.adFree.__attribute__.size	 = 	8
sMds.sMdsEndPosSBCS_mm.dTra	 = 	600.0
sMds.sMdsPreScanNormalize.ucMode	 = 	2
sMds.sMdsPreScanNormalize.ucStackMode	 = 	4
sMds.sMdsPreScanNormalize.lNPELin	 = 	18
sAAInitialOffset.Laterality	 = 	0
sAAInitialOffset.SliceInformation.sPosition.dCor	 = 	25.7224880383
sAAInitialOffset.SliceInformation.sPosition.dTra	 = 	-12.8612440192
sAAInitialOffset.SliceInformation.sNormal.dCor	 = 	1.0
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	42.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilContext	 = 	"InvalidContext"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sWipMemBlock.tFree	 = 	"4cd58221-4390-4295-b9f8-0fb5afce99c5||Sequence: R017 nxva60a/main r/8a088fb07; May 20 2024 14:21:49 by eja"
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.alFree[0]	 = 	4096
sWipMemBlock.alFree[2]	 = 	2560
sWipMemBlock.alFree[3]	 = 	5120
sWipMemBlock.alFree[7]	 = 	1
sWipMemBlock.alFree[9]	 = 	3
sWipMemBlock.alFree[10]	 = 	17
sWipMemBlock.alFree[13]	 = 	1
sWipMemBlock.alFree[14]	 = 	1
sWipMemBlock.alFree[17]	 = 	1
sWipMemBlock.alFree[18]	 = 	1
sWipMemBlock.alFree[19]	 = 	1
sWipMemBlock.alFree[20]	 = 	10
sWipMemBlock.alFree[21]	 = 	40000
sWipMemBlock.alFree[22]	 = 	100000
sWipMemBlock.alFree[23]	 = 	1
sWipMemBlock.alFree[25]	 = 	2
sWipMemBlock.alFree[26]	 = 	2
sWipMemBlock.alFree[27]	 = 	1
sWipMemBlock.alFree[29]	 = 	100
sWipMemBlock.alFree[36]	 = 	1
sWipMemBlock.alFree[37]	 = 	10
sWipMemBlock.alFree[38]	 = 	1
sWipMemBlock.alFree[42]	 = 	10240
sWipMemBlock.alFree[43]	 = 	4
sWipMemBlock.alFree[44]	 = 	30
sWipMemBlock.alFree[52]	 = 	2
sWipMemBlock.alFree[53]	 = 	1
sWipMemBlock.alFree[54]	 = 	1
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[0]	 = 	1.0
sWipMemBlock.adFree[1]	 = 	12.0
sWipMemBlock.adFree[2]	 = 	3.0
sWipMemBlock.adFree[3]	 = 	12.0
sWipMemBlock.adFree[4]	 = 	2.65
sWipMemBlock.adFree[5]	 = 	5.3
sWipMemBlock.adFree[6]	 = 	5.2
sWipMemBlock.adFree[7]	 = 	5.2
sWipMemBlock.adFree[8]	 = 	110.0
sWipMemBlock.adFree[9]	 = 	180.0
sWipMemBlock.adRes.__attribute__.size	 = 	3
ucBOLDParadigmArray.__attribute__.size	 = 	256
sParametricMapping.ucParametricMap	 = 	1
sParametricMapping.SimulatedTEArray.__attribute__.size	 = 	20
sIR.alMagicID.__attribute__.size	 = 	2
sIR.alFree.__attribute__.size	 = 	16
sIR.adFree.__attribute__.size	 = 	16
sAsl.ulMode	 = 	1
sAsl.ulSuppressionMode	 = 	1
sAsl.sPostLabelingDelay.__attribute__.size	 = 	64
sInversionArray.asElm.__attribute__.size	 = 	4
sWorkflow.eConflictSolverStrategy	 = 	1
sWorkflow.ucDotVoiceSettingsOverride	 = 	0x1
sWorkflow.ucDotPauseSettingsOverride	 = 	0x1
sWorkflow.alConflictSolverData.__attribute__.size	 = 	0
sWorkflow.adConflictSolverData.__attribute__.size	 = 	0
sDynDistCorrFilter.ucMode	 = 	1
sChannelMatrix.ucChannelMixingMode	 = 	1
sChannelMatrix.ucChannelDiscardMode	 = 	1
sPTXData.uiPTXTargetMagMode	 = 	1
sPTXData.sPTXMPRSliceArray.asSlice.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anAsc.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anPos.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.sTSat.ulShape	 = 	1
sPTXData.sPTXMPRGroupArray.asGroup.__attribute__.size	 = 	256
sPTXData.sPTXMPRGroupArray.anMember.__attribute__.size	 = 	258
sPTXData.sPTXMPRGroupArray.sPSat.ulShape	 = 	1
sPTXData.asPTXVolume.__attribute__.size	 = 	0
sInlineCardioEval.lInlineEvaMode	 = 	1
sInlineCardioEval.lNoOfPreps	 = 	1
sInlineCardioEval.alRecoveryDuration.__attribute__.size	 = 	1
sInlineCardioEval.alRecoveryDuration[0]	 = 	1
sInlineCardioEval.alSamplingDuration.__attribute__.size	 = 	1
sInlineCardioEval.alSamplingDuration[0]	 = 	1
sInteractive.ucTracking	 = 	0x0
sInteractive.ucSliceFollowing	 = 	1
sInteractive.ucSliceFollowingMode	 = 	1
sInteractive.lTrackingBackgroundSuppr	 = 	5
sInteractive.lTrackingSensitivity	 = 	1
sInteractive.lTrackingFlipAngle	 = 	10
sInteractive.ucPause	 = 	0x0
sInteractive.ucMosaic	 = 	0x0
sInteractive.ucSkipPhysioTrigger	 = 	0x0
sInteractive.lDephasingGradients	 = 	0
sInteractive.ucTrackingOnly	 = 	0x0
sInteractive.lTrackingDeviceIndex	 = 	0
sInteractive.alDephasingGradientAngle.__attribute__.size	 = 	32
sDixonData.ucDixonEvaluation	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonFat	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonWater	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonInPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOpposedPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOriginalEchoes	 = 	0x1
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaWaterFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaFatFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaT2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaR2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaReport	 = 	0x0
asDynamicAdjustVolumes.__attribute__.size	 = 	0
sCommonIterRecon.lIterations	 = 	30
sCommonIterRecon.eReconMethod	 = 	1
sCommonIterRecon.dRegularization	 = 	9.99999974738e-06
sCommonIterRecon.eDenoisingMode	 = 	1
sCommonIterRecon.lDenoisingStrength	 = 	5
sCommonIterRecon.dScalingFactor	 = 	0.0
sCommonIterRecon.dTemporalScaleFactor	 = 	5.0
sCommonIterRecon.dThresholdWavelet	 = 	0.00700000021607
sCommonIterRecon.dTolerance	 = 	9.99999974738e-06
sCommonIterRecon.sGRASPData.lNumPhases	 = 	2
sCommonIterRecon.sGRASPData.ucPreview	 = 	0x0
sCommonIterRecon.sGRASPData.ucLiverAutoBolusDetection	 = 	0x0
sCommonIterRecon.sGRASPData.eWorkflow	 = 	1
sCommonIterRecon.sGRASPData.ucLiverGating	 = 	0x0
sCommonIterRecon.sGRASPData.eRedNumberReconVolumes	 = 	1
sCommonIterRecon.sGRASPData.dBolusDelay	 = 	5.0
sCommonIterRecon.sGRASPData.adDuration.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.adDuration[0]	 = 	1.0
sCommonIterRecon.sGRASPData.adDuration[1]	 = 	1.0
sCommonIterRecon.sGRASPData.adTemporalResolution.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes[0]	 = 	1
sCommonIterRecon.sGRASPData.alReconstructedVolumes[1]	 = 	1
sSliceAcceleration.lMultiBandFactor	 = 	1
sSliceAcceleration.lFOVShiftFactor	 = 	1
MrFingerprinting.MrfMode	 = 	1
MrFingerprinting.MrfUserMode	 = 	0
MrFingerprinting.MrfDictUUID.__attribute__.size	 = 	16
MrAdvancedReconstruction.lAdvancedReconstructionMode	 = 	1
MrAdvancedReconstruction.lDenoisingMethod	 = 	0
MrAdvancedReconstruction.sDeepResolveGain.lDenoisingStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.lEdgeEnhancementStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.ucEdgeEnhancementOn	 = 	0x1
MrAdvancedReconstruction.sDeepResolveBoost.lDenoisingStrength	 = 	2
### ASCCONV END ###
