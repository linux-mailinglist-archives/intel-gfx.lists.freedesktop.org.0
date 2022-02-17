Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D87C4BABED
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 22:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21EAF10E849;
	Thu, 17 Feb 2022 21:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E409010E849
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 21:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645134019; x=1676670019;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fLapwV/CfPpwMUhvy0GtJuRCnoI3PZUbI7aTFZocSy0=;
 b=jzwNCrCUiZ7Fju7kLYJFuBoc3clLtZCrpwErZeLV23VQolIuvY64qpGG
 BDR+SsRLm5Yjf53vC2Kcxlqyj73Tzox6cW8us1GyvZs5UNaIMBSu73o/Y
 n0RbV7xIy5SPi2EiwI2B+WULAxuh85DDP3P1Pb9ZSRySix24IzsWjbqXq
 9z0vUs6KRsNLx4JxKsQpeYpRmYl5NB1oemhUwFYfsg/+mCQNCprtezTJ4
 wBl+u0ESJVRbUb+gqanU75bnFjd1icPQMgcqzFWHX0r4yp2ZrimpT73d+
 xYdSidb/vYhTSlZeStnVtf09FZIe2JJRm8FBJvZMLmAjm0IXJGs1iNb69 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231613643"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="231613643"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:40:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="705031443"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:40:18 -0800
Date: Thu, 17 Feb 2022 13:40:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg7Awcmv+JayXFh9@mdroper-desk1.amr.corp.intel.com>
References: <20220215235531.2236399-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220215235531.2236399-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Move misplaced 'ctx' & 'gt'
 wa's to engine wa list
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

On Tue, Feb 15, 2022 at 03:55:31PM -0800, Matt Roper wrote:
> From: Srinivasan Shanmugam <srinivasan.s@intel.com>
> 
> Registers that belong to the shared render/compute reset domain need to
> be placed on an engine workaround list to ensure that they are properly
> re-applied whenever any RCS or CCS engine is reset, even if the
> registers do not belong to a specific engine's MMIO range.  We have a
> number of workarounds today that are incorrectly implemented on the 'gt'
> workaround list and need to be moved accordingly.  We also have one
> workaround (Wa_22012532006) that is incorrectly implemented on the
> context workaround list, even though the register it is adjusting is not
> part of the RCS engine's context image; it must also be moved.
> 
> We'll have some workaround refactoring coming in the near future that
> deals with registers in the reset domain in a more clear way.  But in
> the meantime, we should just move these workarounds to
> rcs_engine_wa_init() to place them on the RCS engine's workaround list.
> All production DG2 platforms will have an RCS engine (it's never fused
> off) so these registers will be properly restored after a domain reset
> triggered via an RCS engine _or_ a CCS engine.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 62 ++++++++++++---------
>  1 file changed, 35 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b146a393cd79..03df02f76473 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -683,12 +683,6 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	/* Wa_16013271637:dg2 */
>  	wa_masked_en(wal, SLICE_COMMON_ECO_CHICKEN1,
>  		     MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> -
> -	/* Wa_22012532006:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
> -		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
> -			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> @@ -1440,10 +1434,6 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0)) {
> -		/* Wa_14010680813:dg2_g10 */
> -		wa_write_or(wal, GEN12_GAMSTLB_CTRL, CONTROL_BLOCK_CLKGATE_DIS |
> -			    EGRESS_BLOCK_CLKGATE_DIS | TAG_BLOCK_CLKGATE_DIS);
> -
>  		/* Wa_14010948348:dg2_g10 */
>  		wa_write_or(wal, UNSLCGCTL9430, MSQDUNIT_CLKGATE_DIS);
>  
> @@ -1490,16 +1480,6 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  		wa_write_or(wal, SSMCGCTL9530, RTFUNIT_CLKGATE_DIS);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)) {
> -		/* Wa_14012362059:dg2 */
> -		wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
> -	}
> -
> -	/* Wa_1509235366:dg2 */
> -	wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> -		    GLOBAL_INVALIDATION_MODE);
> -
>  	/* Wa_14014830051:dg2 */
>  	wa_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> @@ -1508,14 +1488,7 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 * recommended tuning settings documented in the bspec's
>  	 * performance guide section.
>  	 */
> -	wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>  	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
> -
> -	/* Wa_18018781329:dg2 */
> -	wa_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -	wa_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> -	wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> -	wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  }
>  
>  static void
> @@ -2049,6 +2022,23 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	if (IS_DG2(i915)) {
>  		/* Wa_14015227452:dg2 */
>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> +
> +		/* Wa_1509235366:dg2 */
> +		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> +			    GLOBAL_INVALIDATION_MODE);
> +
> +		/*
> +		 * The following are not actually "workarounds" but rather
> +		 * recommended tuning settings documented in the bspec's
> +		 * performance guide section.
> +		 */
> +		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> +
> +		/* Wa_18018781329:dg2 */
> +		wa_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> @@ -2149,6 +2139,24 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
>  		wa_write_or(wal, RT_CTRL, DIS_NULL_QUERY);
>  
> +	/* Wa_22012532006:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_C0) ||
> +	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
> +		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
> +			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
> +
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
> +		/* Wa_14010680813:dg2_g10 */
> +		wa_write_or(wal, GEN12_GAMSTLB_CTRL, CONTROL_BLOCK_CLKGATE_DIS |
> +			    EGRESS_BLOCK_CLKGATE_DIS | TAG_BLOCK_CLKGATE_DIS);
> +	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
> +		/* Wa_14012362059:dg2 */
> +		wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
> +	}
> +
>  	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/*
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
