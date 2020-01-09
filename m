Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E08E135F1E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 18:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A046E461;
	Thu,  9 Jan 2020 17:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B557E6E461
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 17:18:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 09:18:39 -0800
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="216369957"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 09:18:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
Date: Thu, 09 Jan 2020 19:18:33 +0200
Message-ID: <87pnfso8eu.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 09 Jan 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
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
>
> Explicitly stating here that this seems to be currently
> rather a Hack, than final solution.
>
> v2: Use clamp operation instead of min(Matt Roper)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402
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

I don't think you can do that even as a hack. By clamping the required
minimum to the max cdclk, you lose the check below. Can't do that.

BR,
Jani.

> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
>  			      min_cdclk, dev_priv->max_cdclk_freq);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
