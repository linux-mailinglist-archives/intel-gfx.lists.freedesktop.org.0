Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E96E135F27
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 18:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAFE6E924;
	Thu,  9 Jan 2020 17:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F5D6E924
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 17:20:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 09:20:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="211961641"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 09 Jan 2020 09:20:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2020 19:20:31 +0200
Date: Thu, 9 Jan 2020 19:20:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200109172031.GE13686@intel.com>
References: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109165816.12513-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 09, 2020 at 06:58:16PM +0200, Stanislav Lisovskiy wrote:
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
> =

> Explicitly stating here that this seems to be currently
> rather a Hack, than final solution.
> =

> v2: Use clamp operation instead of min(Matt Roper)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 7d1ab1e5b7c3..23ef30175090 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2004,6 +2004,20 @@ int intel_crtc_compute_min_cdclk(const struct inte=
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
> +		min_cdclk =3D clamp(min_cdclk,
> +				  (int)crtc_state->pixel_rate,
> +				  (int)dev_priv->max_cdclk_freq);

clamp_t() is neater.

> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
>  			      min_cdclk, dev_priv->max_cdclk_freq);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
