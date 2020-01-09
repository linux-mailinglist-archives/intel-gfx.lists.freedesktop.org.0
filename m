Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BB9135EFE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 18:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9CBF6E459;
	Thu,  9 Jan 2020 17:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C68C6E459
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 17:13:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 09:13:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="303928199"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 09 Jan 2020 09:13:50 -0800
Date: Thu, 9 Jan 2020 09:13:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200109171350.GF2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Bump up CDCLK to eliminate
 underruns on TGL
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

On Thu, Jan 09, 2020 at 06:58:16PM +0200, Stanislav Lisovskiy wrote:
> There seems to be some undocumented bandwidth
> bottleneck/dependency which scales with CDCLK,
> causing FIFO underruns when CDCLK is too low,
> even when it's correct from BSpec point of view.
> 
> Currently for TGL platforms we calculate
> min_cdclk initially based on pixel_rate divided
> by 2, accounting for also plane requirements,
> however in some cases the lowest possible CDCLK
> doesn't work and causing the underruns.

We probably want one more sentence here explaining the (somewhat blunt)
workaround we're actually applying with this patch.  E.g., "We've found
experimentally that raising cdclk to at least pixel_rate (rather than
pixel_rate/2) eliminates these underruns, so let's use this as a
temporary workaround until the hardware team can suggest a more precise
remedy."

> 
> Explicitly stating here that this seems to be currently
> rather a Hack, than final solution.
> 
> v2: Use clamp operation instead of min(Matt Roper)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402

I believe we're trying to start using "Closes:" rather than "Bugzilla:"
as the tag here now that the bug database isn't actually bugzilla
anymore.

Anyway, the patch does what it aims to do and eliminates the underruns
that are crippling us at the moment (at the expense of some higher power
usage), so with an updated commit message, this is

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7d1ab1e5b7c3..23ef30175090 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2004,6 +2004,20 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
> +	/*
> +	 * HACK. Currently for TGL platforms we calculate
> +	 * min_cdclk initially based on pixel_rate divided
> +	 * by 2, accounting for also plane requirements,
> +	 * however in some cases the lowest possible CDCLK
> +	 * doesn't work and causing the underruns.
> +	 * Explicitly stating here that this seems to be currently
> +	 * rather a Hack, than final solution.
> +	 */
> +	if (IS_TIGERLAKE(dev_priv))
> +		min_cdclk = clamp(min_cdclk,
> +				  (int)crtc_state->pixel_rate,
> +				  (int)dev_priv->max_cdclk_freq);
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
>  			      min_cdclk, dev_priv->max_cdclk_freq);
> -- 
> 2.24.1.485.gad05a3d8e5
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
