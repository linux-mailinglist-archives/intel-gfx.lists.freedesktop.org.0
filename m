Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E40F3136340
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E8606E06D;
	Thu,  9 Jan 2020 22:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB3E6E06D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 22:33:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 14:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="236299433"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 09 Jan 2020 14:33:22 -0800
Date: Thu, 9 Jan 2020 14:33:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200109223322.GL2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Bump up CDCLK to eliminate
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 10, 2020 at 12:05:47AM +0200, Stanislav Lisovskiy wrote:
> There seems to be some undocumented bandwidth
> bottleneck/dependency which scales with CDCLK,
> causing FIFO underruns when CDCLK is too low,
> even when it's correct from BSpec point of view.
> =

> Currently for TGL platforms we calculate
> min_cdclk initially based on pixel_rate divided
> by 2, accounting for also plane requirements,
> however in some cases the lowest possible CDCLK
> doesn't work and causing the underruns.
> We've found experimentally that raising cdclk to
> at least  pixel_rate (rather than pixel_rate/2)
> eliminates these underruns, so let's use this as a
> temporary workaround until the hardware team
> can suggest a more precise remedy.
> =

> Explicitly stating here that this seems to be currently
> rather a Hack, than final solution.
> =

> v2: Use clamp operation instead of min(Matt Roper)
> =

> v3: - Fixed commit message(Matt Roper)
>     - Now using pixel_rate instead of max_cdclk(Jani Nikula)
>     - Switched to max from clamp(Ville Syrj=E4l=E4)
>     Hopefully this hybrid satisfies everyone :)

This seems fine to me.  My r-b stands.


Matt

> =

> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/402
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 7d1ab1e5b7c3..0ce5926006ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2004,6 +2004,18 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  =

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
> +		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
>  			      min_cdclk, dev_priv->max_cdclk_freq);
> -- =

> 2.24.1.485.gad05a3d8e5
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
