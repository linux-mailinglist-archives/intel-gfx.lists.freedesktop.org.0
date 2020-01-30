Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A8E14E428
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D38C6E901;
	Thu, 30 Jan 2020 20:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0576E901
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 20:42:51 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 12:42:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="309815401"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with SMTP; 30 Jan 2020 12:42:50 -0800
Date: Thu, 30 Jan 2020 12:42:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20200130204250.GC116423@mdroper-desk1.amr.corp.intel.com>
References: <20200129224206.10577-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129224206.10577-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2020 at 02:42:06PM -0800, Anusha Srivatsa wrote:
> Disable Inter and intra Read Suppression (bit 15) and
> Early Read and Src Swap (bit 14) by setting the chicken
> register.
> 
> BSpec: 46045,52890
> 
> v2: Follow the Bspec implementation for the WA.
> v3: Have 2 separate defines for bit 14 and 15.
> - Rename register definitions with TGL_ prefix

The hardware guys changed their mind again and we're back to only
needing bit 14 now.  They updated the bspec and the underlying database
yet again.  :-/

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 2 ++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 5a7db279f702..1f84cd595f88 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -593,6 +593,12 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
>  	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
>  			    FF_MODE2_TDS_TIMER_MASK);
> +
> +	/* Wa_1606931601:tgl */
> +	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
> +			  GEN12_EARLY_READ_SRC0_DISABLE |
> +			  GEN12_INTER_INTRA_READ_SUPPRESSION_DISABLE);

I think Daniele already mentioned this on the other discussion, but
ROW_CHICKEN2 isn't part of the context image on gen12 (see bspec page
46255).  This is a change from ICL where it *was* part of the context
(see bspec page 18907), so even though we handled this register in the
ctx_workarounds_init for ICL, that's not the appropriate place to put it
for TGL.

Since this isn't a context workaround, we need to determine whether it's
a general GT workaround (which would be initialized in
tgl_gt_workarounds_init) or an engine workaround (which would be
initialized in {rcs,xcs}_engine_wa_init.  In this case the register
we're modifying is 0xe49c; according to bspec page 52078 this falls in
one of the forcewake ranges listed under the render engine column
(0E000-0E8FF).  So I believe in this case that means we want to update
rcs_engine_wa_init() with this workaround --- that ensures that the
workaround will be re-applied any time the engine is reset (even if it's
not a full-GPU reset).



Matt

> +
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4c72b8ac0f2e..70ead809c706 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9149,6 +9149,8 @@ enum {
>  #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
>  #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
>  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
> +#define   GEN12_EARLY_READ_SRC0_DISABLE		(1 << 14)
> +#define   GEN12_INTER_INTRA_READ_SUPPRESSION_DISABLE	(1 << 15)
>  
>  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
>  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
> -- 
> 2.25.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
