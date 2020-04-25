Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31F1B82B9
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 02:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67C46E067;
	Sat, 25 Apr 2020 00:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07776E067
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2020 00:27:39 +0000 (UTC)
IronPort-SDR: /xaAFNq19Dswdd8OeQhB5OdkX5x55/m9dP0VBVVJ88wyFif+t86icWycLaS4zei6DMmUM/roLp
 n8De+vz16GEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 17:27:39 -0700
IronPort-SDR: +m6i2Jyd8USTBfJpHNubSu5PD6ONOkVGE+t8Sygv3wj9HCd5hZDxyyjc86s5zliwG0CvhSBpHO
 cGpRUh5DACyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,314,1583222400"; d="scan'208";a="246776750"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with SMTP; 24 Apr 2020 17:27:39 -0700
Date: Fri, 24 Apr 2020 17:27:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20200425002739.GE3989922@mdroper-desk1.amr.corp.intel.com>
References: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
 <20200422123037.25414-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422123037.25414-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Apply Wa_1406680159 as a
 clk_gating workaround
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

On Wed, Apr 22, 2020 at 05:30:37AM -0700, Radhakrishna Sripada wrote:
> The workaround is moved from render engine context to intel_pm
> clk gating functions like the previous platforms.

I don't think this is the right way to go.  There's some GT-related
stuff in the clock gating handlers for historical reasons, but we really
want to be moving that stuff out to the proper locations (gt, engine,
ctx workaround section).

In this case the workaround really is an engine workaround that we want
to re-apply on engine reset.  If we move it to the clock gating
function, I think we have some hacks that will still re-apply it on full
GPU reset, but I don't think it will get re-applied on engine resets.

This is a multicast register, so we should double check that we aren't
doing anything wrong with the read steering, just in case subslice 0 is
fused off on this silicon or whatever.  But assuming that looks correct,
I think we need to follow up with the hardware team more on this one to
find out whether it's really a legitimate workaround, whether readback
for this register is broken in general.


Matt

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
> Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround")
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>  drivers/gpu/drm/i915/intel_pm.c             | 4 ++++
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index adddc5c93b48..a9a75e9b670d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1486,11 +1486,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>  			    PSDUNIT_CLKGATE_DIS);
>  
> -		/* Wa_1406680159:icl,ehl */
> -		wa_write_or(wal,
> -			    SUBSLICE_UNIT_LEVEL_CLKGATE,
> -			    GWUNIT_CLKGATE_DIS);
> -
>  		/*
>  		 * Wa_1408767742:icl[a2..forever],ehl[all]
>  		 * Wa_1605460711:icl[a0..c0]
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 6f40bfee7304..19293ac001e2 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6859,6 +6859,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	/*Wa_14010594013:icl, ehl */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
>  			 0, CNL_DELAY_PMRSP);
> +
> +	/* Wa_1406680159:icl,ehl */
> +	I915_WRITE(SUBSLICE_UNIT_LEVEL_CLKGATE,
> +		   I915_READ(SUBSLICE_UNIT_LEVEL_CLKGATE) | GWUNIT_CLKGATE_DIS);
>  }
>  
>  static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
> -- 
> 2.20.1
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
