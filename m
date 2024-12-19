Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34D39F7EC3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 17:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133B210E49F;
	Thu, 19 Dec 2024 16:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fJ4y7sWV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE7010E34D;
 Thu, 19 Dec 2024 16:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734624150; x=1766160150;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=znzwOkFqKaQemQ0wmhLXyR9+mlQjDxWqSUQwi2JQjgs=;
 b=fJ4y7sWVx/qtnGUDA0NUCY5YAzYSgYTG6WZkmyAFnMhN6dtYuwSZXwAo
 M/fgcdTvZAdT/Vk6CB+F6ila/oYYDyeYzeUCprcdHssJr/1YZqZs0tTUH
 EV3uMXEaKvq3q4xkom7OLNCl4rDKtt5feJojB7P7wfhc6bYmkuDcgrCyU
 qp0ZlYIgZDos/T/gBwZaQR4frzwwH6ymJpalkVU61FlA/xDAOB3tqJX2U
 kgE3Gd2cZqZy2ANQ8RDc+C3cXv0M3sYxy9U2KbdlZlhiAE3jWipdsMQdL
 N3UM0axnBK/xiKZUlhq9lz6RE6MQAX/+0t74a4kjr/ef3oTzMoQtDawQf w==;
X-CSE-ConnectionGUID: n67S2JPESp+MGIMqFMdBPQ==
X-CSE-MsgGUID: +VDN+x6GRbuo4e7xk9qajQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46558645"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="46558645"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 08:02:29 -0800
X-CSE-ConnectionGUID: 1KgTKE5gRxSRh2m8PoTUWg==
X-CSE-MsgGUID: N+nvuuKvSAaWNLgNtHvKYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="98437696"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 08:02:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 18:02:25 +0200
Date: Thu, 19 Dec 2024 18:02:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Message-ID: <Z2RDkcPdNv5vMJOl@intel.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241212143329.938202-2-nemesa.garg@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Dec 12, 2024 at 08:03:28PM +0530, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner get enabled
> together.So once pipe src is computed adjust the pfit_dst.
> It can be done by computing per pipe output area first and then
> and then find the intersection of above area with pfit_dst and
> then adjust the coordinates.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 21319f753a34..7be2ea11b8b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2563,6 +2563,36 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> +/*
> + * The x-coordinate for Primary should be calculated in such a way
> + * that it remains consistent whether the pipes are joined or not.
> + * This means we need to consider the full width of the display even
> + * when the pipes are joined. The x-coordinate for secondaries is 0
> + * because it starts at the leftmost point of its own display area,
> + * ensuring that the framebuffer is centered within Pipe B’s portion
> + * of the overall display.
> + */
> +static int intel_crtc_compute_pfit(struct intel_atomic_state *state,
> +				   struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *mode = &crtc_state->hw.pipe_mode;

const struct drm_display_mode *pipe_mode = ...

> +	struct drm_rect area;
> +
> +	if (!crtc_state->pch_pfit.enabled)
> +		return 0;
> +
> +	drm_rect_init(&area, 0, 0,

This needs a proper x offset to match the pipe's positon in
the overall screen layout (can be determined similarly to
intel_joiner_adjust_pipe_src(), except using crtc_hdisplay
as the width instead of the pipe_src width).

> +		      mode->crtc_hdisplay,
> +		      mode->crtc_vdisplay);
> +
> +	if (!drm_rect_intersect(&crtc_state->pch_pfit.dst, &area))
> +		return -EINVAL;
> +
> +	drm_rect_translate(&crtc_state->pch_pfit.dst, -area.x1, -area.y1);

And this needs to remove the same offset we added originally.

> +
> +	return 0;
> +}
> +
>  static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2645,6 +2675,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> +	ret = intel_crtc_compute_pfit(state, crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	intel_crtc_compute_pixel_rate(crtc_state);
>  
>  	if (crtc_state->has_pch_encoder)
> @@ -4865,6 +4899,13 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>  		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
>  				      &secondary_crtc_state->dp_tunnel_ref);
>  
> +	if (secondary_crtc_state->pch_pfit.enabled) {
> +		struct drm_rect *dst = &secondary_crtc_state->pch_pfit.dst;
> +		int y = dst->y1;
> +
> +		drm_rect_translate_to(dst, 0, y);
> +	}
> +
>  	copy_joiner_crtc_state_nomodeset(state, secondary_crtc);
>  
>  	secondary_crtc_state->uapi.mode_changed = primary_crtc_state->uapi.mode_changed;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
