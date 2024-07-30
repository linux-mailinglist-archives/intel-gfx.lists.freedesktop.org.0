Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10E9940A7A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 09:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5282010E18C;
	Tue, 30 Jul 2024 07:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtU4kaZ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2B510E178
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 07:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722326203; x=1753862203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YZf9DiRcCTJWy4TFljpcWaDllW2dThJPo/Hz5m/qqnc=;
 b=HtU4kaZ9dSA5oBw6kgzkmQTSP1k6HRLbAeTsJRa3NS2mBU0bd+bdiTk3
 vVZe4MJ3178e/+7uO8HVm/N1vIZMNYvUsmKomqqFWAoAZVI2GoYaBHvD/
 /NH83C1CgrOcSAq5T0uTpE6iw5IDcL0H1RbWMIebsvnN6MajtxGBLsqfA
 QT2JSNlu+M1PF4EPgEFLVZACkrACs1Py+oX9/pr2JIw2hlMK03/XhWeKA
 jSl4yIKirbf1gESm8lROLqh60u9WW4vCPm+qKsGC/Y6nNi/JxaDkAl+vR
 p5TJP345a1ial6k0jly30JvMn4IlqYQO4S58PHBnUzeAOYb4W+PHVDIkW Q==;
X-CSE-ConnectionGUID: Hih4445xQnq+cQ6eG3ycGw==
X-CSE-MsgGUID: jDgfn/90QV2eIL0UdzqxFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="12784339"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="12784339"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:56:43 -0700
X-CSE-ConnectionGUID: ZSubOA8FQSeKjVGANH82NQ==
X-CSE-MsgGUID: PtMzfl9WTvibxnq0xeNszg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54223462"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:56:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
In-Reply-To: <20240726095357.1261804-3-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
 <20240726095357.1261804-3-nemesa.garg@intel.com>
Date: Tue, 30 Jul 2024 10:56:39 +0300
Message-ID: <87frrrxqh4.fsf@intel.com>
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

On Fri, 26 Jul 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner gets
> enabled together.
>
> Introduce a new boolean flag is_required which can be filled
> during dp compute_config and later is used to compute panel_fitting in
> pipe_config. Modify pch_panel_fitting to handle joiner pipes by adjusting
> crtc_hdisplay accordingly.

Superficially looks simple enough, but this actually adds a bunch of
complexity. It's not obvious why encoders handle panel fitting in
completely different places, or what "pch_pfit.is_required" really
means.

BR,
Jani.

>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
>  4 files changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bbde03f2508..a7194a84b6b8 100644
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
> +		if (crtc_state->pch_pfit.is_required) {
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
> index a04d52dbf6e1..a4ab26d8fa43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
>  		struct drm_rect dst;
>  		bool enabled;
>  		bool force_thru;
> +		bool is_required;
>  	} pch_pfit;
>  
>  	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d0d878da71ee..d892c5a429f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2922,11 +2922,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		pipe_config->has_pch_encoder = true;
>  
>  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		ret = intel_panel_compute_config(connector, adjusted_mode);
> -		if (ret)
> -			return ret;
> -	}
> +	if (intel_dp_is_edp(intel_dp) && fixed_mode)
> +		pipe_config->pch_pfit.is_required = true;
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
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
