Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF44B7995
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F1910E2E9;
	Tue, 15 Feb 2022 21:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E6910E2E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 21:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644961777; x=1676497777;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=vwmXh2sYNZA+7lrM9Bwq/xM9hjH+EqUbVQhTQSGHdWI=;
 b=XcKV2B3b78NLWIlI3ShSy4HAEOzFdyTO61yzp22eGcfzIXavhRCuSQJq
 uc1clolxVX9rYM1hfAdvXhy0AJoFkACMubFUHnP9KnYOOSNeCAdVWKF+j
 dkovBMYAxDsSAi6oiF94zB3KyQ5GjOZu8xtUQJG8Eez+6Tsg2QNgrG5yW
 Madj1R/rAiWlzerdMk6MN0j1OUlI+xP9bRBm0hvjDShSv0dRPYA4/d0Rg
 stCZKurV14YQgqVRDExwDGYr9NdKjAublkEybRzKaCFMSRxT+SM1YDzRs
 3ao7sq83MHBVBvrJFeQFTHtCA7AC3YsavQDU+As4UwQqq6P0ei2ySdaPJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250201590"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250201590"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:49:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="625040381"
Received: from dbhandar-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.183.40])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:49:36 -0800
Date: Tue, 15 Feb 2022 13:49:22 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20220215214922.GB13300@msatwood-mobl>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220209051140.1599643-6-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Use consistent offset
 notation in intel_gt_regs.h
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 09:11:39PM -0800, Matt Roper wrote:
> Switch all register offsets to use lowercase hex values for consistency.
> Also strip any unnecessary leading 0's.  For example, "_MMIO(0x0D08)"
> becomes "_MMIO(0xd08)."
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 234 ++++++++++++------------
>  1 file changed, 117 insertions(+), 117 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index dcbf7f2f0b90..3b1cae766741 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -29,7 +29,7 @@
>  #define FBC_LLC_READ_CTRL			_MMIO(0x9044)
>  #define   FBC_LLC_FULLY_OPEN			REG_BIT(30)
>  
> -#define GEN6_MBCTL				_MMIO(0x0907c)
> +#define GEN6_MBCTL				_MMIO(0x907c)
>  #define   GEN6_MBCTL_ENABLE_BOOT_FETCH		(1 << 4)
>  #define   GEN6_MBCTL_CTX_FETCH_NEEDED		(1 << 3)
>  #define   GEN6_MBCTL_BME_UPDATE_ENABLE		(1 << 2)
> @@ -70,7 +70,7 @@
>  
>  #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
>  
> -#define WAIT_FOR_RC6_EXIT			_MMIO(0x20CC)
> +#define WAIT_FOR_RC6_EXIT			_MMIO(0x20cc)
>  /* HSW only */
>  #define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT	2
>  #define   HSW_SELECTIVE_READ_ADDRESSING_MASK	(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
> @@ -176,7 +176,7 @@
>  #define GEN7_3DPRIM_START_VERTEX		_MMIO(0x2430)
>  #define GEN7_3DPRIM_VERTEX_COUNT		_MMIO(0x2434)
>  #define GEN7_3DPRIM_INSTANCE_COUNT		_MMIO(0x2438)
> -#define GEN7_3DPRIM_START_INSTANCE		_MMIO(0x243C)
> +#define GEN7_3DPRIM_START_INSTANCE		_MMIO(0x243c)
>  #define GEN7_3DPRIM_BASE_VERTEX			_MMIO(0x2440)
>  
>  #define GEN7_GPGPU_DISPATCHDIMX			_MMIO(0x2500)
> @@ -202,7 +202,7 @@
>  #define   DIS_NULL_QUERY			REG_BIT(10)
>  
>  /* RPM unit config (Gen8+) */
> -#define RPM_CONFIG0				_MMIO(0x0D00)
> +#define RPM_CONFIG0				_MMIO(0xd00)
>  #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
>  #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
>  #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
> @@ -216,11 +216,11 @@
>  #define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
>  #define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
>  
> -#define RPM_CONFIG1				_MMIO(0x0D04)
> +#define RPM_CONFIG1				_MMIO(0xd04)
>  #define   GEN10_GT_NOA_ENABLE			(1 << 9)
>  
>  /* GPM unit config (Gen9+) */
> -#define CTC_MODE				_MMIO(0xA26C)
> +#define CTC_MODE				_MMIO(0xa26c)
>  #define   CTC_SOURCE_PARAMETER_MASK		1
>  #define   CTC_SOURCE_CRYSTAL_CLOCK		0
>  #define   CTC_SOURCE_DIVIDE_LOGIC		1
> @@ -228,33 +228,33 @@
>  #define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
>  
>  /* RCP unit config (Gen8+) */
> -#define RCP_CONFIG				_MMIO(0x0D08)
> +#define RCP_CONFIG				_MMIO(0xd08)
>  
>  #define MICRO_BP0_0				_MMIO(0x9800)
>  #define MICRO_BP0_2				_MMIO(0x9804)
>  #define MICRO_BP0_1				_MMIO(0x9808)
>  
> -#define MICRO_BP1_0				_MMIO(0x980C)
> +#define MICRO_BP1_0				_MMIO(0x980c)
>  #define MICRO_BP1_2				_MMIO(0x9810)
>  #define MICRO_BP1_1				_MMIO(0x9814)
>  
>  #define MICRO_BP2_0				_MMIO(0x9818)
> -#define MICRO_BP2_2				_MMIO(0x981C)
> +#define MICRO_BP2_2				_MMIO(0x981c)
>  #define MICRO_BP2_1				_MMIO(0x9820)
>  
>  #define MICRO_BP3_0				_MMIO(0x9824)
>  #define MICRO_BP3_2				_MMIO(0x9828)
> -#define MICRO_BP3_1				_MMIO(0x982C)
> +#define MICRO_BP3_1				_MMIO(0x982c)
>  
>  #define MICRO_BP_TRIGGER			_MMIO(0x9830)
>  #define MICRO_BP3_COUNT_STATUS01		_MMIO(0x9834)
>  #define MICRO_BP3_COUNT_STATUS23		_MMIO(0x9838)
> -#define MICRO_BP_FIRED_ARMED			_MMIO(0x983C)
> +#define MICRO_BP_FIRED_ARMED			_MMIO(0x983c)
>  
> -#define GAMTARBMODE				_MMIO(0x04a08)
> +#define GAMTARBMODE				_MMIO(0x4a08)
>  #define   ARB_MODE_BWGTLB_DISABLE		(1 << 9)
>  #define   ARB_MODE_SWIZZLE_BDW			(1 << 1)
> -#define RENDER_HWS_PGA_GEN7			_MMIO(0x04080)
> +#define RENDER_HWS_PGA_GEN7			_MMIO(0x4080)
>  
>  #define _RING_FAULT_REG_RCS			0x4094
>  #define _RING_FAULT_REG_VCS			0x4194
> @@ -278,20 +278,20 @@
>  #define GEN8_PRIVATE_PAT_HI			_MMIO(0x40e0 + 4)
>  #define GEN10_PAT_INDEX(index)			_MMIO(0x40e0 + (index) * 4)
>  #define GEN12_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
> -#define BSD_HWS_PGA_GEN7			_MMIO(0x04180)
> +#define BSD_HWS_PGA_GEN7			_MMIO(0x4180)
>  #define GEN12_GFX_CCS_AUX_NV			_MMIO(0x4208)
>  #define GEN12_VD0_AUX_NV			_MMIO(0x4218)
>  #define GEN12_VD1_AUX_NV			_MMIO(0x4228)
>  #define GEN12_VD2_AUX_NV			_MMIO(0x4298)
> -#define GEN12_VD3_AUX_NV			_MMIO(0x42A8)
> +#define GEN12_VD3_AUX_NV			_MMIO(0x42a8)
>  #define GEN12_VE0_AUX_NV			_MMIO(0x4238)
> -#define GEN12_VE1_AUX_NV			_MMIO(0x42B8)
> +#define GEN12_VE1_AUX_NV			_MMIO(0x42b8)
>  #define   AUX_INV				REG_BIT(0)
> -#define BLT_HWS_PGA_GEN7			_MMIO(0x04280)
> -#define VEBOX_HWS_PGA_GEN7			_MMIO(0x04380)
> +#define BLT_HWS_PGA_GEN7			_MMIO(0x4280)
> +#define VEBOX_HWS_PGA_GEN7			_MMIO(0x4380)
>  
> -#define MISC_STATUS0				_MMIO(0xA500)
> -#define MISC_STATUS1				_MMIO(0xA504)
> +#define MISC_STATUS0				_MMIO(0xa500)
> +#define MISC_STATUS1				_MMIO(0xa504)
>  
>  #define GEN7_TLB_RD_ADDR			_MMIO(0x4700)
>  
> @@ -401,7 +401,7 @@
>  #define   GEN9_IZ_HASHING(slice, val)		((val) << ((slice) * 2))
>  
>  /* chicken reg for WaConextSwitchWithConcurrentTLBInvalidate */
> -#define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20D4)
> +#define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
>  
> @@ -415,8 +415,8 @@
>  #define   FLUSHALLNONCOH			REG_BIT(5)
>  
>  /* WaClearTdlStateAckDirtyBits */
> -#define GEN8_STATE_ACK				_MMIO(0x20F0)
> -#define GEN9_STATE_ACK_SLICE1			_MMIO(0x20F8)
> +#define GEN8_STATE_ACK				_MMIO(0x20f0)
> +#define GEN9_STATE_ACK_SLICE1			_MMIO(0x20f8)
>  #define GEN9_STATE_ACK_SLICE2			_MMIO(0x2100)
>  #define   GEN9_STATE_ACK_TDL0			(1 << 12)
>  #define   GEN9_STATE_ACK_TDL1			(1 << 13)
> @@ -457,7 +457,7 @@
>  #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
>  
>  /* Fuse readout registers for GT */
> -#define HSW_PAVP_FUSE1				_MMIO(0x911C)
> +#define HSW_PAVP_FUSE1				_MMIO(0x911c)
>  #define   XEHP_SFC_ENABLE_MASK			REG_GENMASK(27, 24)
>  #define   HSW_F1_EU_DIS_MASK			REG_GENMASK(17, 16)
>  #define   HSW_F1_EU_DIS_10EUS			0
> @@ -526,9 +526,9 @@
>  #define GEN11_GT_SLICE_ENABLE			_MMIO(0x9138)
>  #define   GEN11_GT_S_ENA_MASK			0xFF
>  
> -#define GEN11_GT_SUBSLICE_DISABLE		_MMIO(0x913C)
> +#define GEN11_GT_SUBSLICE_DISABLE		_MMIO(0x913c)
>  
> -#define GEN12_GT_GEOMETRY_DSS_ENABLE		_MMIO(0x913C)
> +#define GEN12_GT_GEOMETRY_DSS_ENABLE		_MMIO(0x913c)
>  #define GEN12_GT_COMPUTE_DSS_ENABLE		_MMIO(0x9144)
>  
>  #define XEHP_EU_ENABLE				_MMIO(0x9134)
> @@ -957,7 +957,7 @@ enum {
>  #define GEN9_CTX_PREEMPT_REG			_MMIO(0x2248)
>  #define   GEN12_DISABLE_POSH_BUSY_FF_DOP_CG	REG_BIT(11)
>  
> -#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON	_MMIO(0x20EC)
> +#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON	_MMIO(0x20ec)
>  #define   GEN12_REPLAY_MODE_GRANULARITY		REG_BIT(0)
>  
>  #define GEN8_CS_CHICKEN1			_MMIO(0x2580)
> @@ -989,9 +989,9 @@ enum {
>  #define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE	REG_BIT(9)
>  
>  #define HIZ_CHICKEN				_MMIO(0x7018)
> -# define CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
> -# define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT(14)
> -# define BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
> +#define   CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
> +#define   DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT(14)
> +#define   BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
>  
>  #define GEN9_SLICE_COMMON_ECO_CHICKEN0		_MMIO(0x7308)
>  #define   DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
> @@ -999,14 +999,14 @@ enum {
>  #define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
>  #define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
>  
> -#define GEN7_SARCHKMD				_MMIO(0xB000)
> +#define GEN7_SARCHKMD				_MMIO(0xb000)
>  #define   GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
>  #define   GEN7_DISABLE_SAMPLER_PREFETCH		(1 << 30)
>  
> -#define GEN7_L3SQCREG1				_MMIO(0xB010)
> +#define GEN7_L3SQCREG1				_MMIO(0xb010)
>  #define   VLV_B0_WA_L3SQCREG1_VALUE		0x00D30000
>  
> -#define GEN8_L3SQCREG1				_MMIO(0xB100)
> +#define GEN8_L3SQCREG1				_MMIO(0xb100)
>  /*
>   * Note that on CHV the following has an off-by-one error wrt. to BSpec.
>   * Using the formula in BSpec leads to a hang, while the formula here works
> @@ -1017,15 +1017,15 @@ enum {
>  #define   L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
>  #define   L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
>  
> -#define GEN7_L3CNTLREG1				_MMIO(0xB01C)
> +#define GEN7_L3CNTLREG1				_MMIO(0xb01c)
>  #define   GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
>  #define   GEN7_L3AGDIS				(1 << 19)
> -#define GEN7_L3CNTLREG2				_MMIO(0xB020)
> -#define GEN7_L3CNTLREG3				_MMIO(0xB024)
> +#define GEN7_L3CNTLREG2				_MMIO(0xb020)
> +#define GEN7_L3CNTLREG3				_MMIO(0xb024)
>  
> -#define GEN7_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB030)
> +#define GEN7_L3_CHICKEN_MODE_REGISTER		_MMIO(0xb030)
>  #define   GEN7_WA_L3_CHICKEN_MODE		0x20000000
> -#define GEN10_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB114)
> +#define GEN10_L3_CHICKEN_MODE_REGISTER		_MMIO(0xb114)
>  #define   GEN11_I2M_WRITE_DISABLE		(1 << 28)
>  
>  #define GEN7_L3SQCREG4				_MMIO(0xb034)
> @@ -1048,7 +1048,7 @@ enum {
>  
>  /* GEN8 chicken */
>  #define HDC_CHICKEN0				_MMIO(0x7300)
> -#define ICL_HDC_MODE				_MMIO(0xE5F4)
> +#define ICL_HDC_MODE				_MMIO(0xe5f4)
>  #define   HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
>  #define   HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
>  #define   HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
> @@ -1056,7 +1056,7 @@ enum {
>  #define   HDC_FORCE_NON_COHERENT		(1 << 4)
>  #define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
>  
> -#define GEN12_HDC_CHICKEN0			_MMIO(0xE5F0)
> +#define GEN12_HDC_CHICKEN0			_MMIO(0xe5f0)
>  #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
>  
>  #define SARB_CHICKEN1				_MMIO(0xe90c)
> @@ -1091,11 +1091,11 @@ enum {
>  #define   FF_MODE2_TDS_TIMER_MASK		REG_GENMASK(23, 16)
>  #define   FF_MODE2_TDS_TIMER_128		REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
>  
> -#define RC6_LOCATION				_MMIO(0xD40)
> +#define RC6_LOCATION				_MMIO(0xd40)
>  #define	  RC6_CTX_IN_DRAM			(1 << 0)
> -#define RC6_CTX_BASE				_MMIO(0xD48)
> +#define RC6_CTX_BASE				_MMIO(0xd48)
>  #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
> -#define FORCEWAKE				_MMIO(0xA18C)
> +#define FORCEWAKE				_MMIO(0xa18c)
>  #define FORCEWAKE_VLV				_MMIO(0x1300b0)
>  #define FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
>  #define FORCEWAKE_MEDIA_VLV			_MMIO(0x1300b8)
> @@ -1118,10 +1118,10 @@ enum {
>  #define FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
>  #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
>  #define FORCEWAKE_GT_GEN9			_MMIO(0xa188)
> -#define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0x0D88)
> -#define FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0x0D50 + (n) * 4)
> -#define FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
> -#define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
> +#define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0xd88)
> +#define FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0xd50 + (n) * 4)
> +#define FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0xd70 + (n) * 4)
> +#define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0xd84)
>  #define FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
>  #define   FORCEWAKE_KERNEL			BIT(0)
>  #define   FORCEWAKE_USER			BIT(1)
> @@ -1129,8 +1129,8 @@ enum {
>  #define FORCEWAKE_MT_ACK			_MMIO(0x130040)
>  #define ECOBUS					_MMIO(0xa180)
>  #define    FORCEWAKE_MT_ENABLE			(1 << 5)
> -#define VLV_SPAREG2H				_MMIO(0xA194)
> -#define GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xA2A0)
> +#define VLV_SPAREG2H				_MMIO(0xa194)
> +#define GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xa2a0)
>  #define   GEN9_PWRGT_MEDIA_STATUS_MASK		(1 << 0)
>  #define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
>  
> @@ -1155,21 +1155,21 @@ enum {
>  #define    IDIHASHMSK(x)			(((x) & 0x3f) << 16)
>  
>  #define GEN6_UCGCTL1				_MMIO(0x9400)
> -# define GEN6_GAMUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> -# define GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE	(1 << 16)
> -# define GEN6_BLBUNIT_CLOCK_GATE_DISABLE	(1 << 5)
> -# define GEN6_CSUNIT_CLOCK_GATE_DISABLE		(1 << 7)
> +#define   GEN6_GAMUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> +#define   GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE	(1 << 16)
> +#define   GEN6_BLBUNIT_CLOCK_GATE_DISABLE	(1 << 5)
> +#define   GEN6_CSUNIT_CLOCK_GATE_DISABLE		(1 << 7)
>  
>  #define GEN6_UCGCTL2				_MMIO(0x9404)
> -# define GEN6_VFUNIT_CLOCK_GATE_DISABLE		(1 << 31)
> -# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE	(1 << 30)
> -# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> -# define GEN6_RCZUNIT_CLOCK_GATE_DISABLE	(1 << 13)
> -# define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE	(1 << 12)
> -# define GEN6_RCCUNIT_CLOCK_GATE_DISABLE	(1 << 11)
> +#define   GEN6_VFUNIT_CLOCK_GATE_DISABLE		(1 << 31)
> +#define   GEN7_VDSUNIT_CLOCK_GATE_DISABLE	(1 << 30)
> +#define   GEN7_TDLUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> +#define   GEN6_RCZUNIT_CLOCK_GATE_DISABLE	(1 << 13)
> +#define   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE	(1 << 12)
> +#define   GEN6_RCCUNIT_CLOCK_GATE_DISABLE	(1 << 11)
>  
>  #define GEN6_UCGCTL3				_MMIO(0x9408)
> -# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE	(1 << 20)
> +#define   GEN6_OACSUNIT_CLOCK_GATE_DISABLE	(1 << 20)
>  
>  #define GEN7_UCGCTL4				_MMIO(0x940c)
>  #define   GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
> @@ -1187,8 +1187,8 @@ enum {
>  #define UNSLCGCTL9430				_MMIO(0x9430)
>  #define   MSQDUNIT_CLKGATE_DIS			REG_BIT(3)
>  
> -#define GEN6_GFXPAUSE				_MMIO(0xA000)
> -#define GEN6_RPNSWREQ				_MMIO(0xA008)
> +#define GEN6_GFXPAUSE				_MMIO(0xa000)
> +#define GEN6_RPNSWREQ				_MMIO(0xa008)
>  #define   GEN6_TURBO_DISABLE			(1 << 31)
>  #define   GEN6_FREQUENCY(x)			((x) << 25)
>  #define   HSW_FREQUENCY(x)			((x) << 24)
> @@ -1198,8 +1198,8 @@ enum {
>  #define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
>  #define   GEN9_IGNORE_SLICE_RATIO		(0 << 0)
>  
> -#define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
> -#define GEN6_RC_CONTROL				_MMIO(0xA090)
> +#define GEN6_RC_VIDEO_FREQ			_MMIO(0xa00c)
> +#define GEN6_RC_CONTROL				_MMIO(0xa090)
>  #define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
>  #define   GEN6_RC_CTL_RC6p_ENABLE		(1 << 17)
>  #define   GEN6_RC_CTL_RC6_ENABLE		(1 << 18)
> @@ -1209,16 +1209,16 @@ enum {
>  #define   GEN7_RC_CTL_TO_MODE			(1 << 28)
>  #define   GEN6_RC_CTL_EI_MODE(x)		((x) << 27)
>  #define   GEN6_RC_CTL_HW_ENABLE			(1 << 31)
> -#define GEN6_RP_DOWN_TIMEOUT			_MMIO(0xA010)
> -#define GEN6_RP_INTERRUPT_LIMITS		_MMIO(0xA014)
> -#define GEN6_RPSTAT1				_MMIO(0xA01C)
> +#define GEN6_RP_DOWN_TIMEOUT			_MMIO(0xa010)
> +#define GEN6_RP_INTERRUPT_LIMITS		_MMIO(0xa014)
> +#define GEN6_RPSTAT1				_MMIO(0xa01c)
>  #define   GEN6_CAGF_SHIFT			8
>  #define   HSW_CAGF_SHIFT			7
>  #define   GEN9_CAGF_SHIFT			23
>  #define   GEN6_CAGF_MASK			(0x7f << GEN6_CAGF_SHIFT)
>  #define   HSW_CAGF_MASK				(0x7f << HSW_CAGF_SHIFT)
>  #define   GEN9_CAGF_MASK			(0x1ff << GEN9_CAGF_SHIFT)
> -#define GEN6_RP_CONTROL				_MMIO(0xA024)
> +#define GEN6_RP_CONTROL				_MMIO(0xa024)
>  #define   GEN6_RP_MEDIA_TURBO			(1 << 11)
>  #define   GEN6_RP_MEDIA_MODE_MASK		(3 << 9)
>  #define   GEN6_RP_MEDIA_HW_TURBO_MODE		(3 << 9)
> @@ -1235,61 +1235,61 @@ enum {
>  #define   GEN6_RPSWCTL_SHIFT			9
>  #define   GEN9_RPSWCTL_ENABLE			(0x2 << GEN6_RPSWCTL_SHIFT)
>  #define   GEN9_RPSWCTL_DISABLE			(0x0 << GEN6_RPSWCTL_SHIFT)
> -#define GEN6_RP_UP_THRESHOLD			_MMIO(0xA02C)
> -#define GEN6_RP_DOWN_THRESHOLD			_MMIO(0xA030)
> -#define GEN6_RP_CUR_UP_EI			_MMIO(0xA050)
> +#define GEN6_RP_UP_THRESHOLD			_MMIO(0xa02c)
> +#define GEN6_RP_DOWN_THRESHOLD			_MMIO(0xa030)
> +#define GEN6_RP_CUR_UP_EI			_MMIO(0xa050)
>  #define   GEN6_RP_EI_MASK			0xffffff
>  #define   GEN6_CURICONT_MASK			GEN6_RP_EI_MASK
> -#define GEN6_RP_CUR_UP				_MMIO(0xA054)
> +#define GEN6_RP_CUR_UP				_MMIO(0xa054)
>  #define   GEN6_CURBSYTAVG_MASK			GEN6_RP_EI_MASK
> -#define GEN6_RP_PREV_UP				_MMIO(0xA058)
> -#define GEN6_RP_CUR_DOWN_EI			_MMIO(0xA05C)
> +#define GEN6_RP_PREV_UP				_MMIO(0xa058)
> +#define GEN6_RP_CUR_DOWN_EI			_MMIO(0xa05c)
>  #define   GEN6_CURIAVG_MASK			GEN6_RP_EI_MASK
> -#define GEN6_RP_CUR_DOWN			_MMIO(0xA060)
> -#define GEN6_RP_PREV_DOWN			_MMIO(0xA064)
> -#define GEN6_RP_UP_EI				_MMIO(0xA068)
> -#define GEN6_RP_DOWN_EI				_MMIO(0xA06C)
> -#define GEN6_RP_IDLE_HYSTERSIS			_MMIO(0xA070)
> -#define GEN6_RPDEUHWTC				_MMIO(0xA080)
> -#define GEN6_RPDEUC				_MMIO(0xA084)
> -#define GEN6_RPDEUCSW				_MMIO(0xA088)
> -#define GEN6_RC_STATE				_MMIO(0xA094)
> +#define GEN6_RP_CUR_DOWN			_MMIO(0xa060)
> +#define GEN6_RP_PREV_DOWN			_MMIO(0xa064)
> +#define GEN6_RP_UP_EI				_MMIO(0xa068)
> +#define GEN6_RP_DOWN_EI				_MMIO(0xa06c)
> +#define GEN6_RP_IDLE_HYSTERSIS			_MMIO(0xa070)
> +#define GEN6_RPDEUHWTC				_MMIO(0xa080)
> +#define GEN6_RPDEUC				_MMIO(0xa084)
> +#define GEN6_RPDEUCSW				_MMIO(0xa088)
> +#define GEN6_RC_STATE				_MMIO(0xa094)
>  #define   RC_SW_TARGET_STATE_SHIFT		16
>  #define   RC_SW_TARGET_STATE_MASK		(7 << RC_SW_TARGET_STATE_SHIFT)
> -#define GEN6_RC1_WAKE_RATE_LIMIT		_MMIO(0xA098)
> -#define GEN6_RC6_WAKE_RATE_LIMIT		_MMIO(0xA09C)
> -#define GEN6_RC6pp_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
> -#define GEN10_MEDIA_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
> -#define GEN6_RC_EVALUATION_INTERVAL		_MMIO(0xA0A8)
> -#define GEN6_RC_IDLE_HYSTERSIS			_MMIO(0xA0AC)
> -#define GEN6_RC_SLEEP				_MMIO(0xA0B0)
> -#define GEN6_RCUBMABDTMR			_MMIO(0xA0B0)
> -#define GEN6_RC1e_THRESHOLD			_MMIO(0xA0B4)
> -#define GEN6_RC6_THRESHOLD			_MMIO(0xA0B8)
> -#define GEN6_RC6p_THRESHOLD			_MMIO(0xA0BC)
> -#define VLV_RCEDATA				_MMIO(0xA0BC)
> -#define GEN6_RC6pp_THRESHOLD			_MMIO(0xA0C0)
> -#define GEN6_PMINTRMSK				_MMIO(0xA168)
> +#define GEN6_RC1_WAKE_RATE_LIMIT		_MMIO(0xa098)
> +#define GEN6_RC6_WAKE_RATE_LIMIT		_MMIO(0xa09c)
> +#define GEN6_RC6pp_WAKE_RATE_LIMIT		_MMIO(0xa0a0)
> +#define GEN10_MEDIA_WAKE_RATE_LIMIT		_MMIO(0xa0a0)
> +#define GEN6_RC_EVALUATION_INTERVAL		_MMIO(0xa0a8)
> +#define GEN6_RC_IDLE_HYSTERSIS			_MMIO(0xa0ac)
> +#define GEN6_RC_SLEEP				_MMIO(0xa0b0)
> +#define GEN6_RCUBMABDTMR			_MMIO(0xa0b0)
> +#define GEN6_RC1e_THRESHOLD			_MMIO(0xa0b4)
> +#define GEN6_RC6_THRESHOLD			_MMIO(0xa0b8)
> +#define GEN6_RC6p_THRESHOLD			_MMIO(0xa0bc)
> +#define VLV_RCEDATA				_MMIO(0xa0bc)
> +#define GEN6_RC6pp_THRESHOLD			_MMIO(0xa0c0)
> +#define GEN6_PMINTRMSK				_MMIO(0xa168)
>  #define   GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC	(1 << 31)
>  #define   ARAT_EXPIRED_INTRMSK			(1 << 9)
> -#define GEN8_MISC_CTRL0				_MMIO(0xA180)
> -#define VLV_PWRDWNUPCTL				_MMIO(0xA294)
> -#define GEN9_MEDIA_PG_IDLE_HYSTERESIS		_MMIO(0xA0C4)
> -#define GEN9_RENDER_PG_IDLE_HYSTERESIS		_MMIO(0xA0C8)
> -#define GEN9_PG_ENABLE				_MMIO(0xA210)
> +#define GEN8_MISC_CTRL0				_MMIO(0xa180)
> +#define VLV_PWRDWNUPCTL				_MMIO(0xa294)
> +#define GEN9_MEDIA_PG_IDLE_HYSTERESIS		_MMIO(0xa0c4)
> +#define GEN9_RENDER_PG_IDLE_HYSTERESIS		_MMIO(0xa0c8)
> +#define GEN9_PG_ENABLE				_MMIO(0xa210)
>  #define   GEN9_RENDER_PG_ENABLE			REG_BIT(0)
>  #define   GEN9_MEDIA_PG_ENABLE			REG_BIT(1)
>  #define   GEN11_MEDIA_SAMPLER_PG_ENABLE		REG_BIT(2)
>  #define   VDN_HCP_POWERGATE_ENABLE(n)		REG_BIT(3 + 2 * (n))
>  #define   VDN_MFX_POWERGATE_ENABLE(n)		REG_BIT(4 + 2 * (n))
> -#define GEN8_PUSHBUS_CONTROL			_MMIO(0xA248)
> -#define GEN8_PUSHBUS_ENABLE			_MMIO(0xA250)
> -#define GEN8_PUSHBUS_SHIFT			_MMIO(0xA25C)
> +#define GEN8_PUSHBUS_CONTROL			_MMIO(0xa248)
> +#define GEN8_PUSHBUS_ENABLE			_MMIO(0xa250)
> +#define GEN8_PUSHBUS_SHIFT			_MMIO(0xa25c)
>  
>  #define GEN6_PMISR				_MMIO(0x44020)
>  #define GEN6_PMIMR				_MMIO(0x44024) /* rps_lock */
>  #define GEN6_PMIIR				_MMIO(0x44028)
> -#define GEN6_PMIER				_MMIO(0x4402C)
> +#define GEN6_PMIER				_MMIO(0x4402c)
>  #define   GEN6_PM_MBOX_EVENT			(1 << 25)
>  #define   GEN6_PM_THERMAL_EVENT			(1 << 24)
>  
> @@ -1308,7 +1308,7 @@ enum {
>  						 GEN6_PM_RP_DOWN_THRESHOLD  | \
>  						 GEN6_PM_RP_DOWN_TIMEOUT)
>  
> -#define GEN7_GT_SCRATCH(i)			_MMIO(0x4F100 + (i) * 4)
> +#define GEN7_GT_SCRATCH(i)			_MMIO(0x4f100 + (i) * 4)
>  #define   GEN7_GT_SCRATCH_REG_NUM		8
>  
>  #define VLV_GTLC_SURVIVABILITY_REG		_MMIO(0x130098)
> @@ -1324,12 +1324,12 @@ enum {
>  #define   VLV_RENDER_RC6_COUNT_EN		(1 << 0)
>  #define GEN6_GT_GFX_RC6				_MMIO(0x138108)
>  #define VLV_GT_RENDER_RC6			_MMIO(0x138108)
> -#define VLV_GT_MEDIA_RC6			_MMIO(0x13810C)
> +#define VLV_GT_MEDIA_RC6			_MMIO(0x13810c)
>  
> -#define GEN6_GT_GFX_RC6p			_MMIO(0x13810C)
> +#define GEN6_GT_GFX_RC6p			_MMIO(0x13810c)
>  #define GEN6_GT_GFX_RC6pp			_MMIO(0x138110)
>  #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
> -#define VLV_MEDIA_C0_COUNT			_MMIO(0x13811C)
> +#define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
>  
>  #define GEN6_GT_CORE_STATUS			_MMIO(0x138060)
>  #define   GEN6_CORE_CPD_STATE_MASK		(7 << 4)
> @@ -1381,33 +1381,33 @@ enum {
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
>  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
>  
> -#define GEN8_GARBCNTL				_MMIO(0xB004)
> +#define GEN8_GARBCNTL				_MMIO(0xb004)
>  #define   GEN9_GAPS_TSV_CREDIT_DISABLE		(1 << 7)
>  #define   GEN11_ARBITRATION_PRIO_ORDER_MASK	(0x3f << 22)
>  #define   GEN11_HASH_CTRL_EXCL_MASK		(0x7f << 0)
>  #define   GEN11_HASH_CTRL_EXCL_BIT0		(1 << 0)
>  
> -#define GEN11_GLBLINVL				_MMIO(0xB404)
> +#define GEN11_GLBLINVL				_MMIO(0xb404)
>  #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
>  #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
>  
>  #define GEN10_DFR_RATIO_EN_AND_CHICKEN		_MMIO(0x9550)
>  #define   DFR_DISABLE				(1 << 9)
>  
> -#define GEN11_GACB_PERF_CTRL			_MMIO(0x4B80)
> +#define GEN11_GACB_PERF_CTRL			_MMIO(0x4b80)
>  #define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
>  #define   GEN11_HASH_CTRL_BIT0			(1 << 0)
>  #define   GEN11_HASH_CTRL_BIT4			(1 << 12)
>  
> -#define GEN11_LSN_UNSLCVC			_MMIO(0xB43C)
> +#define GEN11_LSN_UNSLCVC			_MMIO(0xb43c)
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC	(1 << 9)
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  
> -#define GEN10_SAMPLER_MODE			_MMIO(0xE18C)
> +#define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
>  #define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
> -#define GEN7_L3LOG(slice, i)			_MMIO(0xB070 + (slice) * 0x200 + (i) * 4)
> +#define GEN7_L3LOG(slice, i)			_MMIO(0xb070 + (slice) * 0x200 + (i) * 4)
>  #define   GEN7_L3LOG_SIZE			0x80
>  
>  #define GEN7_HALF_SLICE_CHICKEN1		_MMIO(0xe100) /* IVB GT1 + VLV */
> @@ -1519,7 +1519,7 @@ enum {
>  #define   MMCD_PCLA				(1 << 31)
>  #define   MMCD_HOTSPOT_EN			(1 << 27)
>  
> -#define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
> +#define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
>  #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
>  
>  #endif /* __INTEL_GT_REGS__ */
> -- 
> 2.34.1
> 
