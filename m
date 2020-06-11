Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C87F1F64B8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 11:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1106E060;
	Thu, 11 Jun 2020 09:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B016E060
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 09:28:14 +0000 (UTC)
IronPort-SDR: oTaprSSFf5D2+9zz7kjYQJoNlnoNkVlzZFT2rumCyfOCw8ogThZ38vQ83jZnoZY8NV2ngmBm8W
 WuQhHsBZTvsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 02:28:13 -0700
IronPort-SDR: KqEkRvZJzGMfOAIdoBMxe1ji5HiK9+ibo3uYyQenfi/7TkiSph88zvUolEXp/pXU0XuksW3yKX
 vSmIheJJX7eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="419048885"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 11 Jun 2020 02:28:12 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B1C8C5C2CA7; Thu, 11 Jun 2020 12:25:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 12:25:36 +0300
Message-ID: <871rmm9cof.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Move hsw GT workarounds
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
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2011
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 48 +++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.c             | 39 +----------------
>  2 files changed, 50 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3eec31c5a714..39f070bff09d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -178,6 +178,12 @@ wa_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
>  	wa_write_masked_or(wal, reg, set, set);
>  }
>  
> +static void
> +wa_write_clr(struct i915_wa_list *wal, i915_reg_t reg, u32 clr)
> +{
> +	wa_write_masked_or(wal, reg, clr, 0);
> +}
> +
>  static void
>  wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
>  {
> @@ -708,6 +714,46 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	return 0;
>  }
>  
> +static void
> +hsw_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +{
> +	/* L3 caching of data atomics doesn't work -- disable it. */
> +	wa_write_or(wal, HSW_SCRATCH1, HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE);

Just noted here is a change. We cleared everything else but this
previously.

-Mika

> +
> +	wa_add(wal,
> +	       HSW_ROW_CHICKEN3, 0,
> +	       _MASKED_BIT_ENABLE(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE),
> +		0 /* XXX does this reg exist? */);
> +
> +	/* WaVSRefCountFullforceMissDisable:hsw */
> +	wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
> +
> +	wa_masked_dis(wal,
> +		      CACHE_MODE_0_GEN7,
> +		      /* WaDisable_RenderCache_OperationalFlush:hsw */
> +		      RC_OP_FLUSH_ENABLE |
> +		      /* enable HiZ Raw Stall Optimization */
> +		      HIZ_RAW_STALL_OPT_DISABLE);
> +
> +	/* WaDisable4x2SubspanOptimization:hsw */
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
> +	/* WaSampleCChickenBitEnable:hsw */
> +	wa_masked_en(wal, HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
> +}
> +
>  static void
>  gen9_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
> @@ -985,6 +1031,8 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  		bxt_gt_workarounds_init(i915, wal);
>  	else if (IS_SKYLAKE(i915))
>  		skl_gt_workarounds_init(i915, wal);
> +	else if (IS_HASWELL(i915))
> +		hsw_gt_workarounds_init(i915, wal);
>  	else if (INTEL_GEN(i915) <= 8)
>  		return;
>  	else
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 26b670fa3f88..249ee720874c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7321,45 +7321,10 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	/* L3 caching of data atomics doesn't work -- disable it. */
> -	I915_WRITE(HSW_SCRATCH1, HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE);
> -	I915_WRITE(HSW_ROW_CHICKEN3,
> -		   _MASKED_BIT_ENABLE(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE));
> -
>  	/* This is required by WaCatErrorRejectionIssue:hsw */
>  	I915_WRITE(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -			I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> -			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> -
> -	/* WaVSRefCountFullforceMissDisable:hsw */
> -	I915_WRITE(GEN7_FF_THREAD_MODE,
> -		   I915_READ(GEN7_FF_THREAD_MODE) & ~GEN7_FF_VS_REF_CNT_FFME);
> -
> -	/* WaDisable_RenderCache_OperationalFlush:hsw */
> -	I915_WRITE(CACHE_MODE_0_GEN7, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
> -
> -	/* enable HiZ Raw Stall Optimization */
> -	I915_WRITE(CACHE_MODE_0_GEN7,
> -		   _MASKED_BIT_DISABLE(HIZ_RAW_STALL_OPT_DISABLE));
> -
> -	/* WaDisable4x2SubspanOptimization:hsw */
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
> -	/* WaSampleCChickenBitEnable:hsw */
> -	I915_WRITE(HALF_SLICE_CHICKEN3,
> -		   _MASKED_BIT_ENABLE(HSW_SAMPLE_C_PERFORMANCE));
> +		   I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> +		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:hsw */
>  	I915_WRITE(GAM_ECOCHK, I915_READ(GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
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
