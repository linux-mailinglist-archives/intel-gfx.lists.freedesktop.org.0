Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DD41348EB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 18:16:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3966E062;
	Wed,  8 Jan 2020 17:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D1F6E062
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 17:16:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 09:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="216014820"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 09:16:21 -0800
Date: Wed, 8 Jan 2020 09:16:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200108171621.GZ1762291@mdroper-desk1.amr.corp.intel.com>
References: <20200108122650.13823-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108122650.13823-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Bump up CDCLK to eliminate
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

On Wed, Jan 08, 2020 at 02:26:50PM +0200, Stanislav Lisovskiy wrote:
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
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7d1ab1e5b7c3..3db4060ed190 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2004,6 +2004,13 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
> +	if (IS_GEN(dev_priv, 12)) {
> +		if (min_cdclk <= DIV_ROUND_UP(crtc_state->pixel_rate, 2)) {
> +			min_cdclk = min(min_cdclk * 2,
> +				    ((int)dev_priv->max_cdclk_freq));
> +		}

min_cdclk is initially set to DIV_ROUND_UP(crtc_state->pixel_rate, 2),
and then only potentially increases from there, so we're really just
checking for equality here, right (the "<" case is impossible)?  Should
we worry that one of the other checks (audio, planes, etc.) might have
just slightly bumped up min_cdclk, causing this condition to fail, but
not bumping it far enough to get us into the seemingly-safe zone?

Maybe it would be simpler/safer to just do something like

        /* HACK */
        if (IS_TIGERLAKE(dev_priv))
                min_cdclk = clamp(min_cdclk,
                                  crtc_state->pixel_rate,
                                  dev_priv->max_cdclk_freq);

which seems closer to the true goal of the workaround?

Regardless, we should probably also have a code comment on whatever we
come up with just like we do on all the other min_cdclk adjustments,
especially since this one is a hack that doesn't actually match the
bspec.


Matt


> +	}
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
