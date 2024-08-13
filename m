Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA0D94FF1A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 09:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6713310E03C;
	Tue, 13 Aug 2024 07:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7ZLtKtL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D7910E03C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 07:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723535541; x=1755071541;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i2VEnyJh5XOvBDYBY5unZYDImkhaiMf06Pk+A/X/zxg=;
 b=X7ZLtKtLkjbYS02DEGxn+qXXHUzJVaLoSbXRt/u93s3lOrYVYKG9oFJu
 jeePWs8hzKIKXesSiN2PZQRj8v5Gxi2v9Qn6U7Z7bv8brhsbOZTB366PV
 ArWHeqB1QwInsg2dy5WEKkXNHnP7VnZK97HyuUZCR0Kqs/jECrvyRNbrR
 UoR4TermjzOQctRW7WauNiiJD9ipIOpbLwaBw7Pai4emQOjz5DkhugHI1
 WTsE/0dwXldIIyb4LndiFDYdMm0kpX4qT3TIbyDG1AXXHX1jFpYAVlYCZ
 NLkGlPGJMXinhCmXW4yLIXgKqCPNOS8uu6UwR0bg6jPccZvbuBEo2TzlW w==;
X-CSE-ConnectionGUID: vA/iArH/Rp+7Xo2yYxlnfg==
X-CSE-MsgGUID: PNwjgeESRJyMdPigWWW2LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="12981250"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="12981250"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 00:52:21 -0700
X-CSE-ConnectionGUID: sSgTZl//RCmbjgrxrCWy9Q==
X-CSE-MsgGUID: 4GFukmfTRuOBfOqPpogbLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59147592"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 00:52:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
In-Reply-To: <20240808045407.2365733-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240805062538.1844291-3-nemesa.garg@intel.com>
 <20240808045407.2365733-1-nemesa.garg@intel.com>
Date: Tue, 13 Aug 2024 10:52:16 +0300
Message-ID: <87cymc272n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 08 Aug 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner get enabled
> together.
>
> Introduce a new boolean flag need_joiner which is set during dp
> compute_config in joiner case and later is used to compute
> panel_fitting in pipe_config. Modify pch_panel_fitting to handle
> joiner pipes by adjusting crtc_hdisplay accordingly.

So I still don't like the fact that intel_panel_fitting() is called in
different ways for different connectors, controlled by a flag in crtc
state.

That said, I couldn't come up with a better idea either, apart from
moving *all* panel fitting intel_modeset_pipe_config().

Cc: Ville, in case he has some ideas for this. Please hold off on
merging until we get some input from him.


Thanks,
Jani.


>
> v2: Address comments (Ankit)
> v3: Change flag name (Ankit)
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++---
>  drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
>  4 files changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bbde03f2508..82b67c0a90e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  		return ret;
>  	}
>  
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		if (crtc_state->pch_pfit.need_joiner) {
> +			ret = intel_panel_fitting(crtc_state, connector_state);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>  	/* Dithering seems to not pass-through bits correctly when it should, so
>  	 * only enable it on 6bpc panels and when its not a compliance
>  	 * test requesting 6bpc video pattern.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a04d52dbf6e1..eb9713b088c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
>  		struct drm_rect dst;
>  		bool enabled;
>  		bool force_thru;
> +		bool need_joiner;
>  	} pch_pfit;
>  
>  	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 65182bf69b62..d5d9d4f21fc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2953,9 +2953,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  
>  	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
>  	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> +		if (!pipe_config->joiner_pipes) {
> +			ret = intel_panel_fitting(pipe_config, conn_state);
> +			if (ret)
> +				return ret;
> +		} else {
> +			 /* Incase of joiner panel_fitting is handled during pipe_config */
> +			pipe_config->pch_pfit.need_joiner = true;
> +		}
>  	}
>  
>  	pipe_config->limited_color_range =
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index dd18136d1c61..0da45c2330d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
>  	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>  
> +	if (crtc_state->joiner_pipes)
> +		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
> +
>  	/* Native modes don't need fitting */
>  	if (crtc_hdisplay == pipe_src_w &&
>  	    crtc_vdisplay == pipe_src_h &&

-- 
Jani Nikula, Intel
