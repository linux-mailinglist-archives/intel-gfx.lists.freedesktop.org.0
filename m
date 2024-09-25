Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D869867B2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 22:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE72510E134;
	Wed, 25 Sep 2024 20:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CbRGEne4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E7C10E134
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 20:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727296580; x=1758832580;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OY65Luj66OTOaDl7P/x65XGDIExuhZB82moC+ij6PKQ=;
 b=CbRGEne4c/8nUEmhc8DooGwPxYV718mFFcjFj2jZmm3DQmDmfO6wVCYs
 5YEUBcjTO1Otti1KnMWlA9oUvHYitCtQfIZLO5HgdH4rkie89XqzDF36r
 19ZN65pDC0htPH3c2kOYk+I8oC+/DziQ+AsmBcnxiDzlWA8l6teahkMpj
 9sffImxCKZz3R2Wwo9+KPI2OGFMdgKXImjX8GbagIyzeBp/GQ80zquoCU
 e1x4A0Y9WciZ/c0QEUZMd3B5vTPWEpHpdFRQIRVSZC7W3xhffgzXRATaH
 gUWj9MiAOQeyDJR7rNyZFsrLxpQELNiF2kOBIhoYRAtThWY6cCzv/KkfR Q==;
X-CSE-ConnectionGUID: WfL+tNZHSJWDSRRXn5grGA==
X-CSE-MsgGUID: 9shnxg0wRQuZeo7v0vK1mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26467698"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="26467698"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:36:05 -0700
X-CSE-ConnectionGUID: 8QjgkeR2RZaBvms5AY2cpw==
X-CSE-MsgGUID: WKteNSwHQDCx9LW4ZUoykA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="72036085"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 13:36:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 23:36:02 +0300
Date: Wed, 25 Sep 2024 23:36:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 3/3] drm/i915/display: Call panel_fitting from
 pipe_config
Message-ID: <ZvR0Mgfo84shEtL8@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-4-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925063032.2311796-4-nemesa.garg@intel.com>
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

On Wed, Sep 25, 2024 at 12:00:32PM +0530, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner get enabled
> together. Call panel_fitting from pipe_config once pipe src is
> computed.
> 
> v4: Remove need_joiner flag [Ville]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4ef4d59da1a..0148939caaaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4653,6 +4653,8 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
> +	const struct drm_display_mode *fixed_mode;
> +	struct intel_dp *intel_dp;
>  	int pipe_src_w, pipe_src_h;
>  	int base_bpp, ret, i;
>  
> @@ -4774,6 +4776,24 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  		return ret;
>  	}
>  
> +	for_each_new_connector_in_state(&state->base, connector,
> +					connector_state, i) {
> +		struct intel_encoder *encoder =
> +			to_intel_encoder(connector_state->best_encoder);
> +
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		intel_dp = enc_to_intel_dp(encoder);
> +
> +		if (!intel_dp)
> +			continue;
> +
> +		if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> +		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)

We don't need those checks, but we do need a !gmch check.

> +			return intel_pch_panel_fitting(crtc_state, connector_state);

That unconditional return should not be here as we'll
now skip the rest of the function.

The connector_state requirement is a bit unfortunate. Not sure
if we should hide this all in the pfit code or not. Hmm, and 
when we introduce the TV margin properties those too will have
to come from the connector state. I guess keeping the loop
in the caller is easier for now at least.

But this is the wrong place to do this all. It needs to be
done between intel_crtc_compute_pipe_mode() and
intel_crtc_compute_pixel_rate(). I would stash it all inside
some kind of intel_crtc_compute_pfit() function so as to
not pollute intel_crtc_compute_config() too badly.

> +	}
> +
>  	/* Dithering seems to not pass-through bits correctly when it should, so
>  	 * only enable it on 6bpc panels and when its not a compliance
>  	 * test requesting 6bpc video pattern.
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
