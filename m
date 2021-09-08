Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEED24038C1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1206E192;
	Wed,  8 Sep 2021 11:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1EF6E192
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:29:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="218593365"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="218593365"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:29:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538511958"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:29:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vandita.kulkarni@intel.com,
 cooper.chiou@intel.com, william.tseng@intel.com,
 Lee Shawn C <shawn.c.lee@intel.com>
In-Reply-To: <20210902121429.27606-4-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210902121429.27606-1-shawn.c.lee@intel.com>
 <20210902121429.27606-4-shawn.c.lee@intel.com>
Date: Wed, 08 Sep 2021 14:29:45 +0300
Message-ID: <87mton5mqe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v3 3/5] drm/i915: Get proper min cdclk if vDSC
 enabled
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

On Thu, 02 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> VDSC engine can process only 1 pixel per Cd clock. In case
> VDSC is used and max slice count == 1, max supported pixel
> clock should be 100% of CD clock. Then do min_cdclk and
> pixel clock comparison to get proper min cdclk.
>
> v2:
> - Check for dsc enable and slice count ==1 then allow to
>   double confirm min cdclk value.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 34fa4130d5c4..9aec17b33819 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2139,6 +2139,16 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
> +	/*
> +	 * VDSC engine can process only 1 pixel per Cd clock.
> +	 * In case VDSC is used and max slice count == 1,
> +	 * max supported pixel clock should be 100% of CD clock.
> +	 * Then do min_cdclk and pixel clock comparison to get cdclk.
> +	 */

To elaborate, we can't use two VDSC engines to reach an effective 2 ppc
when the slice count is 1, and are thus limited to 1 ppc.

> +	if (crtc_state->dsc.compression_enable &&
> +	    crtc_state->dsc.slice_count == 1)
> +		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);

Acked-by: Jani Nikula <jani.nikula@intel.com>

This is the immediate fix, but I think we'll need to improve this later
on. In some cases, especially with DP and maybe not so much with DSI, we
may have cases where the min_cdclk will now exceed the max_cdclk and
fail the compute config. In that case, we should do a better job of
pruning the mode up front instead of letting userspace think it's okay,
only to fail it at this stage.

We should probably also abstract the ppc limitations in the DSC code
better, instead of having them leak here.

BR,
Jani.


> +
>  	/*
>  	 * HACK. Currently for TGL platforms we calculate
>  	 * min_cdclk initially based on pixel_rate divided

-- 
Jani Nikula, Intel Open Source Graphics Center
