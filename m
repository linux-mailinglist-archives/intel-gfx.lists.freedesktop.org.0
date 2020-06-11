Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B811F6557
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 12:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D90E6E8D4;
	Thu, 11 Jun 2020 10:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9816E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 10:05:32 +0000 (UTC)
IronPort-SDR: YpUpq5EwE4hxgJNqXE8YIGMbffpbyibmFwwqTb0M/sUnoxeGbpP3JmNE52zgFocsCLGs/jhWyE
 RvmoBhfGc+zQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 03:05:31 -0700
IronPort-SDR: qXsQL2rJXLL6vL/kyrENiW9yc/N6sIdf5c2NDNksVI4yn1I0aFxtNlLo3nQXNWpEML8mj5u47K
 mbe7ifGO7odA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="350141204"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2020 03:05:30 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 952C15C2CA7; Thu, 11 Jun 2020 13:02:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200611080140.30228-3-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
 <20200611080140.30228-3-chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 13:02:54 +0300
Message-ID: <87pna59ay9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Move vlv GT workarounds
 from init_clock_gating to workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Rescue the GT workarounds from being buried inside init_clock_gating so
> that we remember to apply them after a GT reset, and that they are
> included in our verification that the workarounds are applied.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 59 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.c             | 61 ---------------------
>  2 files changed, 59 insertions(+), 61 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a5ba3ea8d45a..688ca25d79d0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -774,6 +774,63 @@ ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  	       GEN6_WIZ_HASHING_16x4);
>  }
>  
> +static void
> +vlv_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +{
> +	/* WaDisableEarlyCull:vlv */
> +	wa_masked_en(wal,_3D_CHICKEN3, _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
> +
> +	/* WaPsdDispatchEnable:vlv */
> +	/* WaDisablePSDDualDispatchEnable:vlv */
> +	wa_masked_en(wal,
> +		     GEN7_HALF_SLICE_CHICKEN1,
> +		     GEN7_MAX_PS_THREAD_DEP |
> +		     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
> +
> +	/* WaDisable_RenderCache_OperationalFlush:vlv */
> +	wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
> +
> +	/* WaForceL3Serialization:vlv */
> +	wa_write_clr(wal, GEN7_L3SQCREG4, L3SQ_URB_READ_CAM_MATCH_DISABLE);
> +
> +	/*
> +	 * WaVSThreadDispatchOverride:ivb,vlv
> +	 *
> +	 * This actually overrides the dispatch
> +	 * mode for all thread types.
> +	 */
> +	wa_write_masked_or(wal,
> +			   GEN7_FF_THREAD_MODE,
> +			   GEN7_FF_SCHED_MASK,
> +			   GEN7_FF_TS_SCHED_HW |
> +			   GEN7_FF_VS_SCHED_HW |
> +			   GEN7_FF_DS_SCHED_HW);
> +
> +	/*
> +	 * BSpec says this must be set, even though
> +	 * WaDisable4x2SubspanOptimization isn't listed for VLV.
> +	 */
> +	wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> +
> +	/*
> +	 * BSpec recommends 8x4 when MSAA is used,
> +	 * however in practice 16x4 seems fastest.
> +	 *
> +	 * Note that PS/WM thread counts depend on the WIZ hashing
> +	 * disable bit, which we don't touch here, but it's good
> +	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
> +	 */
> +	wa_add(wal, GEN7_GT_MODE, 0,
> +	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
> +	       GEN6_WIZ_HASHING_16x4);
> +
> +	/*
> +	 * WaIncreaseL3CreditsForVLVB0:vlv
> +	 * This is the hardware default actually.
> +	 */
> +	wa_write(wal, GEN7_L3SQCREG1, VLV_B0_WA_L3SQCREG1_VALUE);
> +}
> +
>  static void
>  hsw_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
> @@ -1093,6 +1150,8 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  		skl_gt_workarounds_init(i915, wal);
>  	else if (IS_HASWELL(i915))
>  		hsw_gt_workarounds_init(i915, wal);
> +	else if (IS_VALLEYVIEW(i915))
> +		vlv_gt_workarounds_init(i915, wal);
>  	else if (IS_IVYBRIDGE(i915))
>  		ivb_gt_workarounds_init(i915, wal);
>  	else if (INTEL_GEN(i915) <= 8)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index b835e5e97515..29abde47e987 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7077,24 +7077,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen6_check_mch_setup(dev_priv);
>  }
>  
> -static void gen7_setup_fixed_func_scheduler(struct drm_i915_private *dev_priv)
> -{
> -	u32 reg = I915_READ(GEN7_FF_THREAD_MODE);
> -
> -	/*
> -	 * WaVSThreadDispatchOverride:ivb,vlv
> -	 *
> -	 * This actually overrides the dispatch
> -	 * mode for all thread types.
> -	 */
> -	reg &= ~GEN7_FF_SCHED_MASK;
> -	reg |= GEN7_FF_TS_SCHED_HW;
> -	reg |= GEN7_FF_VS_SCHED_HW;
> -	reg |= GEN7_FF_DS_SCHED_HW;
> -
> -	I915_WRITE(GEN7_FF_THREAD_MODE, reg);
> -}
> -
>  static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -7381,28 +7363,11 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	/* WaDisableEarlyCull:vlv */
> -	I915_WRITE(_3D_CHICKEN3,
> -		   _MASKED_BIT_ENABLE(_3D_CHICKEN_SF_DISABLE_OBJEND_CULL));
> -
>  	/* WaDisableBackToBackFlipFix:vlv */
>  	I915_WRITE(IVB_CHICKEN3,
>  		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
>  		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>  
> -	/* WaPsdDispatchEnable:vlv */
> -	/* WaDisablePSDDualDispatchEnable:vlv */
> -	I915_WRITE(GEN7_HALF_SLICE_CHICKEN1,
> -		   _MASKED_BIT_ENABLE(GEN7_MAX_PS_THREAD_DEP |
> -				      GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE));
> -
> -	/* WaDisable_RenderCache_OperationalFlush:vlv */
> -	I915_WRITE(CACHE_MODE_0_GEN7, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
> -
> -	/* WaForceL3Serialization:vlv */
> -	I915_WRITE(GEN7_L3SQCREG4, I915_READ(GEN7_L3SQCREG4) &
> -		   ~L3SQ_URB_READ_CAM_MATCH_DISABLE);
> -
>  	/* WaDisableDopClockGating:vlv */
>  	I915_WRITE(GEN7_ROW_CHICKEN2,
>  		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> @@ -7412,8 +7377,6 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
>  		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
> -	gen7_setup_fixed_func_scheduler(dev_priv);
> -
>  	/*
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
>  	 * This implements the WaDisableRCZUnitClockGating:vlv workaround.
> @@ -7427,30 +7390,6 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  	I915_WRITE(GEN7_UCGCTL4,
>  		   I915_READ(GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
>  
> -	/*
> -	 * BSpec says this must be set, even though
> -	 * WaDisable4x2SubspanOptimization isn't listed for VLV.
> -	 */
> -	I915_WRITE(CACHE_MODE_1,
> -		   _MASKED_BIT_ENABLE(PIXEL_SUBSPAN_COLLECT_OPT_DISABLE));
> -
> -	/*
> -	 * BSpec recommends 8x4 when MSAA is used,
> -	 * however in practice 16x4 seems fastest.
> -	 *
> -	 * Note that PS/WM thread counts depend on the WIZ hashing
> -	 * disable bit, which we don't touch here, but it's good
> -	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
> -	 */
> -	I915_WRITE(GEN7_GT_MODE,
> -		   _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));
> -
> -	/*
> -	 * WaIncreaseL3CreditsForVLVB0:vlv
> -	 * This is the hardware default actually.
> -	 */
> -	I915_WRITE(GEN7_L3SQCREG1, VLV_B0_WA_L3SQCREG1_VALUE);
> -
>  	/*
>  	 * WaDisableVLVClockGating_VBIIssue:vlv
>  	 * Disable clock gating on th GCFG unit to prevent a delay
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
